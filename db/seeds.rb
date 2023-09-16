# Clear existing data
User.destroy_all
GroupExpenses.destroy_all
Expense.destroy_all
Group.destroy_all

# Create Users
user1 = User.create(name: 'User 1')
user2 = User.create(name: 'User 2')

# Create Groups
group1 = Group.create(name: 'Group 1', icon: 'icon1', user: user1)
group2 = Group.create(name: 'Group 2', icon: 'icon2', user: user2)

# Create Expenses
expense1 = Expense.create(name: 'Expense 1', amount: 100.00, user: user1)
expense2 = Expense.create(name: 'Expense 2', amount: 50.00, user: user2)

# Create GroupExpenses
GroupExpenses.create(group: group1, expense: expense1)
GroupExpenses.create(group: group2, expense: expense2)

puts 'Dummy data created successfully.'

