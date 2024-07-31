# Days Since Start Script

This PowerShell script calculates the number of days, months, and weeks that have passed since a given start date, which in this case is March 13th, 2024. It also outputs the result in a random color from a predefined set of colors.

## Features
- Calculates the total number of days since the start date.
- Breaks down the total days into approximate months, weeks, and remaining days.
- Outputs the result in a randomly selected color from a set of 16 colors.
- Pauses at the end to allow the user to read the output before the script terminates.

## Usage

1. **Get the current date**: The script first gets the current date using `Get-Date`.

2. **Define the start date**: The start date (March 13, 2024) is defined using `Get-Date -Year 2024 -Month 3 -Day 13`.

3. **Calculate the number of days since the start date**: The number of days since the start date is calculated by subtracting the start date from the current date and retrieving the `.Days` property.

4. **Calculate months, weeks, and days**:
    - The script approximates the number of months by dividing the total days by 30.
    - The remaining days after accounting for months are divided by 7 to approximate the number of weeks.
    - The remaining days after accounting for weeks are also calculated.

5. **Define an array of available colors**: An array of 16 possible colors is defined.

6. **Select a random color**: A random color is selected from the array using `Get-Random`.

7. **Output the result**: The script outputs the calculated time since the start date in the selected random color.

8. **Pause the script**: The script pauses and waits for the user to press Enter before terminating.

## Script

```powershell
# Get the current date
$currentDate = Get-Date

# Define March 13th, 2024
$marchThirteenth2024 = Get-Date -Year 2024 -Month 3 -Day 13

# Calculate the number of days since March 13th, 2024
$daysSinceMarchThirteenth = ($currentDate - $marchThirteenth2024).Days

# Calculate months, weeks, and days
$months = [math]::Floor($daysSinceMarchThirteenth / 30)  # Approximate months
$remainingDaysAfterMonths = $daysSinceMarchThirteenth % 30
$weeks = [math]::Floor($remainingDaysAfterMonths / 7)  # Approximate weeks
$days = $remainingDaysAfterMonths % 7  # Remaining days

# Define an array of available colors
$colors = @("Black", "DarkBlue", "DarkGreen", "DarkCyan", "DarkRed", "DarkMagenta", "DarkYellow", "Gray", "DarkGray", "Blue", "Green", "Cyan", "Red", "Magenta", "Yellow", "White")

# Select a random color
$randomColor = Get-Random -InputObject $colors

# Output the result with the random color
Write-Host "It has been $months months, $weeks weeks, and $days days since you started working here, March 13, 2024 " -ForegroundColor $randomColor

Write-Host "It has been $daysSinceMarchThirteenth days since your start date" -ForegroundColor $randomColor

Write-Host "It is time to move on to the next phase..." -ForegroundColor $randomColor

# Pause the script
Read-Host "Press Enter to continue..."
```

## How to Run

1. Copy the script into a `.ps1` file (e.g., `days_since_start.ps1`).
2. Click on script or open a PowerShell terminal.
3. Navigate to the directory where the script is saved.
4. Run the script using the command: `.\days_since_start.ps1`.

---

Feel free to customize the script to better suit your needs. If you encounter any issues or have any suggestions for improvements, please open an issue or submit a pull request on GitHub.
