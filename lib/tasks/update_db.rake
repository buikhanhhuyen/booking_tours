namespace :update_db do
  desc "update tours table"
  task update_tours: :environment do
    Tour.where(status: 0).where("start_date < ?", Time.now).update_all status: :expried
  end

  desc "update discounts table"
  task update_discounts: :environment do
    Discount.where(status: 1)
      .where("end_date < ?", Time.now)
      .update_all status: :expried
    Discount.where(status: 0)
      .where("start_date < ?", Time.now)
      .update_all status: :happened
  end

end
