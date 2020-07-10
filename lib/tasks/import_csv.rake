require "import.rb"


namespace :import_csv do

  desc "aws_text_data.csvをインポートするタスク"
  task aws_texts: :environment do
    path = File.join Rails.root, "db/csv_data/aws_text_data.csv"
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
      puts "インポート完了！"
    rescue  ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

  desc "movie_data.csvをインポートするタスク"
  task movies: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    begin
      Movie.create!(list)
      puts "インポート完了！"
    rescue  ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

end
