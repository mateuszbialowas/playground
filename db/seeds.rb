# frozen_string_literal: true

if Employee.count < 10
  Employee.transaction do
    10.times do
      Employee.create!(
        full_name: FFaker::Name.name,
        department: Employee.statuses.keys.sample,
        position: FFaker::Job.title,
        email: FFaker::Internet.email,
        phone: FFaker::PhoneNumber.phone_number,
        birthday: FFaker::Time.date,
        location: FFaker::Address.country,
        avatar: Down.download(FFaker::Avatar.image)
      )
    end
  end

end
