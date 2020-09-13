########################################################
# Step 1: Establish the layers

# In this section of the file, as a series of comments,
# create a list of the layers you identify.
#answer: a hash that stores all the data - arrays that stores hashes (hash - array - hash)
# Which layers are nested in each other?
# answer: from inside out: hashes, are nested into arrays( driver_DR0001,...). arrays are nested to a hash (ride_history)
# ride_history = {
#     driver_DR0001: [
#         {
#             rider_id: "RD0003",
#             date: "3rd Feb 2016",
#             cost: 10,
#             rating: 3
#         },
#         {
#
#             rider_id: "RD0015",
#             date: "3rd Feb 2016",
#             cost: 30,
#             rating: 4
#         },...
# 
# Which layers of data "have" within it a different layer?
# answer: the hash layer assigned to the variable called "ride_history". this hash has 4 keys (driver_DR0001,...)
# each key has 2 to 3 hashes.
# ===================
# Which layers are "next" to each other?
# answer: drivers id (driver_DR0001,...)arrays and hashes(inside each array) are next to each other.
# [:driver_DR0001, [{:driver_id=>"DR0001", :rider_id=>"RD0003", :date=>"3rd Feb 2016", :cost=>10, :rating=>3}, {:driver_id=>"DR0001", :rider_id=>"RD0015", :date=>"3rd Feb 2016", :cost=>30, :rating=>4}, {:driver_id=>"DR0001", :rider_id=>"RD0015", :date=>"5th Feb 2016", :cost=>45, :rating=>2}]]
# [:driver_DR0002, [{:driver_id=>"DR0002", :rider_id=>"RD0073", :date=>"3rd Feb 2016", :cost=>25, :rating=>5}, {:driver_id=>"DR0002", :rider_id=>"RD0013", :date=>"4th Feb 2016", :cost=>15, :rating=>1}, {:driver_id=>"DR0002", :rider_id=>"RD0066", :date=>"5th Feb 2016", :cost=>35, :rating=>3}]]
# [:driver_DR0003, [{:driver_id=>"DR0003", :rider_id=>"RD0003", :date=>"5th Feb 2016", :cost=>50, :rating=>2}, {:driver_id=>"DR0003", :rider_id=>"RD0003", :date=>"5th Feb 2016", :cost=>50, :rating=>2}]]
# [:driver_DR0004, [{:driver_id=>"DR0004", :rider_id=>"RD0003", :date=>"3rd Feb 2016", :cost=>5, :rating=>5}, {:driver_id=>"DR0004", :rider_id=>"RD0022", :date=>"3rd Feb 2016", :cost=>10, :rating=>4}, {:driver_id=>"DR0004", :rider_id=>"RD0073", :date=>"5th Feb 2016", :cost=>20, :rating=>5}]]

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and in this section
# determine what data structure each layer should have
# answer: the firs layer is a hash that has been assigned to a variable. inside the hash there are 4 keys(drivers id)
# each key which is an array has stored 2 to 3 hashes.
# ride_history = {
#     driver_DR0001: [
#         {
#             rider_id: "RD0003",
#             date: "3rd Feb 2016",
#             cost: 10,
#             rating: 3
#         },
#         {
#             rider_id: "RD0015",
#             date: "3rd Feb 2016",
#             cost: 30,
#             rating: 4
#         },
#         {
#             rider_id: "RD0015",
#             date: "5th Feb 2016",
#             cost: 45,
#             rating: 2
#         }
#     ],
#     driver_DR0002: [
#         {
#             rider_id: "RD0073",
#             date: "3rd Feb 2016",
#             cost: 25,
#             rating: 5
#         },
#         {

########################################################
# Step 3: Make the data structure!

# Setup the entire data structure:
# based off of the notes you have above, create the
# and manually write in data presented in rides.csv
# You should be copying and pasting the literal data
# into this data structure, such as "DR0004"
# and "3rd Feb 2016" and "RD0022"
# answer:
# ride_history = {
#     driver_DR0001: [
#         {
#             driver_id: "DR0001",
#             rider_id: "RD0003",
#             date: "3rd Feb 2016",
#             cost: 10,
#             rating: 3
#         },
#         {
#             driver_id: "DR0001",
#             rider_id: "RD0015",
#             date: "3rd Feb 2016",
#             cost: 30,
#             rating: 4
#         },
#         {
#             driver_id: "DR0001",
#             rider_id: "RD0015",
#             date: "5th Feb 2016",
#             cost: 45,
#             rating: 2
#         }
#     ],
#     driver_DR0002: [
#         {
#             driver_id: "DR0002",
#             rider_id: "RD0073",
#             date: "3rd Feb 2016",
#             cost: 25,
#             rating: 5
#         },
#         {
#             driver_id: "DR0002",
#             rider_id: "RD0013",
#             date: "4th Feb 2016",
#             cost: 15,
#             rating: 1
#         },
#         {
#             driver_id: "DR0002",
#             rider_id: "RD0066",
#             date: "5th Feb 2016",
#             cost: 35,
#             rating: 3
#         }
#     ],
#     driver_DR0003: [
#         {
#             driver_id: "DR0003",
#             rider_id: "RD0003",
#             date: "5th Feb 2016",
#             cost: 50,
#             rating: 2
#         },
#         {
#             driver_id: "DR0003",
#             rider_id: "RD0003",
#             date: "5th Feb 2016",
#             cost: 50,
#             rating: 2
#         }
#     ],
#     driver_DR0004: [
#         {
#             driver_id: "DR0004",
#             rider_id: "RD0003",
#             date: "3rd Feb 2016",
#             cost: 5,
#             rating: 5
#         },
#         {
#             driver_id: "DR0004",
#             rider_id: "RD0022",
#             date: "3rd Feb 2016",
#             cost: 10,
#             rating: 4
#
#         },
#         {
#             rider_id: "RD0073",
#             date: "5th Feb 2016",
#             cost: 20,
#             rating: 5
#         }
#     ]
# }

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

# Use an iteration blocks to print the following answers:
# - the number of rides each driver has given
# answer:
# driver_DR0001, ride number: 3
# driver_DR0002, ride number: 3
# driver_DR0003, ride number: 2
# driver_DR0004, ride number: 3
# ----------------------
# - the total amount of money each driver has made
# answer:
# driver_DR0001, earned: $85
# driver_DR0002, earned: $75
# driver_DR0003, earned: $100
# driver_DR0004, earned: $35
# --------------------------
# - the average rating for each driver
# answer:
# driver_DR0001, average rating: 3
# driver_DR0002, average rating: 3
# driver_DR0003, average rating: 2
# driver_DR0004, average rating: 4
# --------------------------
# - Which driver made the most money?
# answer: driver_DR0003, made the most money.
# - Which driver has the highest average rating?
# answer: driver_DR0004, has the highest average rating.
#
# code:
# #initiated a new hash to store drivers id & total earning
# total_earning = Hash.new(0)
# #initiated a new hash to store drivers id & total earning
# average_rating = Hash.new(0)
#
# # for each driver
# ride_history.each do |driver|
#   # average rating for each driver
#   rating_average = driver[1].map { |x| x[:rating]}.sum / driver[1].size
#
#   total_cost = 0
#   # for each ride for that driver
#   driver[1].each do |i|
#     total_cost += i[:cost]
#   end
#   #key value pairs added to the hash(total_earning)
#   total_earning[driver[0]] = total_cost
#   average_rating[driver[0]] = rating_average
#
#   #summery:
#   puts "#{driver[0]}, ride number: #{driver[1].length} earned: $#{total_cost} - average rating: #{rating_average}"
# end
#
# puts "======================================================"
# #driver with the most earning
# max_earning = total_earning.max_by { |id, earning| earning }[0]
# puts "#{max_earning}, made the most money."
# #============================================
# #driver with the highest average rating
# max_rating = average_rating.max_by { |id, rating| rating}[0]
# puts "#{max_rating}, has the highest average rating."
