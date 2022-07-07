def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(all_names)
  all_names.map { |name| badge_maker(name) }
end

def assign_rooms(speakers)
  room_assignments = []
  room_num = 1
  speakers.each do |speaker|
    room_assignments << "Hello, #{speaker}! You'll be assigned to room #{room_num}!"
    (room_num += 1) > 7 ? room_num = 1 : room_num
  end
  room_assignments
end

def printer(group)
  group.each { |person| puts badge_maker(person) }
  assign_rooms(group).each { |assignment| puts assignment }
end
