def add_time(start_time, end_time, day=False):
    
    # constants
    hrs_one_day = 24
    hrs_half_day = 12
    days = [
        "monday",
        "tuesday",
        "wednesday",
        "thursday",
        "friday",
        "saturday",
        "sunday",
    ]
    
    time_add = { 'hrs':0, 'mins':0, 'prd':'am', 'end_hrs':0, 'end_mins':0 }
    days_later = 0
    
    time_add['hrs'] = int(start_time.split(":")[0])
    time_add['mins'] = int(start_time.split(":")[1].split()[0])
    time_add['prd'] = start_time.split(":")[1].split()[1]
    time_add['end_hrs'] = int(end_time.split(":")[0])
    time_add['end_mins'] = int(end_time.split(":")[1]) 
    
    # total time and end time hrs and minutes
    #total Hours(t_hrs) y total minutes(t_mins)
    t_hrs = time_add['hrs'] + time_add['end_hrs']
    t_mins = time_add['mins'] + time_add['end_mins']
    prd = time_add['prd'] 
    
    # Shift minutes to hour if minutes is over 60
    if t_mins >= 60:
        t_hrs += int(t_mins / 60)
        t_mins = int(t_mins % 60)
        
    
    if prd == "PM" and t_hrs > hrs_half_day:
        # hours 24hr then add  days
        if t_hrs % hrs_one_day >= 1.0:
            days_later += 1
            
    
    if t_hrs >= hrs_half_day:
        days_later += int(t_hrs / hrs_one_day)

    temp_hrs = t_hrs
    
    while True:
        # total_hours are less than half a day
        if temp_hrs < hrs_half_day:
            break
        if prd == "AM":
            prd = "PM"
        else:
            prd = "AM"
        temp_hrs -= hrs_half_day
    
    chg_hrs = int(t_hrs % hrs_half_day) or time_add['hrs'] + 1
    chg_mins = int(t_mins % 60)
     
    next_day = ""
    if days_later == 1:
        next_day = "(next day)"
    elif days_later > 1:
        next_day = f"({days_later} days later)"

    # Format the results
    res = f"{chg_hrs}:{chg_mins:02} {prd}"
    if day:  # add the day of the week
        day = day.strip().lower()
        sel_day = int((days.index(day) + days_later) % 7)
        cur_day = days[sel_day]
        res += f", {cur_day.title()} {next_day}"
    else:  # add the days later
        res = " ".join((res, next_day))

    return res.strip()
   





