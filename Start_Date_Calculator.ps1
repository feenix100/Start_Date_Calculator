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
