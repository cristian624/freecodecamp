def arithmetic_arranger(problems, solve=False):
    #Development problems
    #variables 
    arranged_problems = ''
    top = ''
    mid = ''
    dashes = ''
    bottom = ''
    
    #condition Too many problems
    if len(problems) > 5:
        arranged_problems = "Error: Too many problems."
        return arranged_problems
    
    #condition  Operator must be '+' or '-'
    matches = [match for match in problems if not ("+" in match or "-" in match) or len(match.split()) > 3 ]
    if len(matches) > 0 : 
        return ("Error: Operator must be '+' or '-'.")
    
    #transform to an arrays of problems
    ls = [c for x in problems for c in x.split() ] 
    
    for match in ls:
        #condition Numbers must only contain digits.
        if not( '-' in match or '+' in match or match.isdigit())  :
            return ('Error: Numbers must only contain digits.')
    
    for match in ls:
        #condition Numbers cannot be more than four digits.  
        if not( '-' in match or '+' in match or len(match) <= 4 )  :
            return ('Error: Numbers cannot be more than four digits.')
    
    ls = [x.split() for x in problems ]
    
    for match in ls:
        
        space_len = max(len(match[0]), len(match[2])) + 2
    
        top += str(match[0]).rjust(space_len) + '    '
        mid += match[1] + str(match[2]).rjust(space_len -1) + '    ' 
        dashes += "-".rjust(space_len,"-") + '    '
        solution = eval(match[0] + match[1] + match[2])
        bottom += str(solution).rjust(space_len) + '    '
     
    top = top[:len(top) -4]   
    mid = mid[:len(mid) -4]
    dashes = dashes[:len(dashes) -4]
    bottom = bottom[:len(bottom) -4]
    
    #condition solve          
    if solve:
       arranged_problems = '\n'.join((top, mid, dashes , bottom))
    else :
       arranged_problems = '\n'.join((top, mid, dashes))

    return arranged_problems