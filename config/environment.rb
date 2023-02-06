require 'bundler/setup'
Bundler.require

require_relative "../lib/student"

DB = { conn: SQLite3::Database.new("db/students.db") }

namespace :db do
desc 'migrate changes to your database'
task migrate: environment do
    require_relative ./config/environment
    Student.create_table
end
end