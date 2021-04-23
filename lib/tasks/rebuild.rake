# Rebuild Task
namespace :db do
  desc 'Drop, create, migrate, seed the database with prompt.'
  task :rebuild => :environment do
    puts 'Database rebuild process started...'

    $stdout.puts 'Drop old database? (y/n)'
    if $stdin.gets.strip == 'y'
      puts 'Dropping old database...'
      Rake::Task['db:drop'].invoke
    end

    $stdout.puts 'Create new database? (y/n)'
    if $stdin.gets.strip == 'y'
      puts 'Creating database...'
      Rake::Task['db:create'].invoke
    end

    $stdout.puts 'Migrate new database? (y/n)'
    if $stdin.gets.strip == 'y'
      puts 'Migrating new database...'
      Rake::Task['db:migrate'].invoke
    end

    $stdout.puts 'Seed new database? (y/n)'
    if $stdin.gets.strip == 'y'
      puts 'Seeding new database...'
      Rake::Task['db:seed'].invoke
    end

    puts 'Task completed successfully!'
  end

  desc 'Drop, create, migrate, seed the database without prompt.'
  task :rebuild_silent => :environment do
    puts 'Database rebuild process started...'
    %w(drop create migrate seed).each do |task|
      puts "Performing database #{task}..."
      Rake::Task["db:#{task}"].invoke
    end
    puts 'Task completed successfully!'
  end
end
