import sys
import os

path = r'd:\oop_tut\lib\REF_FOR_QUESTIONS\files (2)\interview_questions_repository.dart'

with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()
    
new_lines = []
in_question = False

for i, line in enumerate(lines):
    # original_line = line
    stripped = line.strip()
    
    # Check for start of QuestionAnswerString with single quote
    # Must NOT be triple quote already
    if "QuestionAnswerString('" in line and "QuestionAnswerString('''" not in line:
        # Check if it ends on same line
        if stripped.endswith("'),") or stripped.endswith("')"):
            # Single line, leave as is
            new_lines.append(line)
        else:
            # Multiline start
            new_line = line.replace("QuestionAnswerString('", "QuestionAnswerString('''")
            new_lines.append(new_line)
            in_question = True
    
    elif in_question:
        # We are inside a multiline string
        # Check for end
        if stripped.endswith("'),") or stripped.endswith("')"):
            # Found end.
            # Replace the LAST ' with '''
            rindex = line.rfind("'")
            if rindex != -1:
                # Make sure we don't break things if line ends with '''), (triple quote)
                # But we know we are in single quote mode from 'in_question'
                # Just strictly replace the last quote
                new_line = line[:rindex] + "'''" + line[rindex+1:]
                new_lines.append(new_line)
                in_question = False
            else:
                new_lines.append(line)
        else:
            # Middle line. keep as is.
            new_lines.append(line)
    else:
        new_lines.append(line)
        
with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)

print("Fixed strings.")
