# Clear existing data
User.destroy_all
GroupExpenses.destroy_all
Expense.destroy_all
Group.destroy_all

# Create sample users
User.create!(
  name: 'User 1',
  email: 'user1@example.com',
  password: 'password1'
)

User.create!(
  name: 'User 2',
  email: 'user2@example.com',
  password: 'password2'
)

# Create sample groups
Group.create!(
  name: 'Group 1',
  icon: 'group_icon_1',
  user_id: User.first.id
)

Group.create!(
  name: 'Group 2',
  icon: 'group_icon_2',
  user_id: User.second.id
)

# Create sample expenses associated with users and groups
Expense.create!(
  name: 'Expense 1',
  amount: 100.00,
  user_id: User.first.id
)

Expense.create!(
  name: 'Expense 2',
  amount: 75.50,
  user_id: User.second.id
)

# Create associations between expenses and groups
GroupExpenses.create!(
  group_id: Group.first.id,
  expense_id: Expense.first.id
)

GroupExpenses.create!(
  group_id: Group.second.id,
  expense_id: Expense.second.id
)

puts 'Dummy data created successfully.'

