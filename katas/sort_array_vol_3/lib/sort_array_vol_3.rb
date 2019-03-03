def sort_array_vol_3(course_ids)
  course_ids.sort_by { |course| course.split('-').reverse }
end
