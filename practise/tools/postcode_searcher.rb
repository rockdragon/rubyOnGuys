require 'sqlite3'

module DB
  DB_PATH = 'db/mydb.db'

  def create_tables
    if !File.exist?(DB_PATH)
      SQLite3::Database.open(DB_PATH) do |db|
        db.execute 'CREATE TABLE ADDRBOOK (name TEXT, address TEXT)'
      end
    end
  end

  def add(name, address)
    SQLite3::Database.open(DB_PATH) do |db|
      db.execute 'INSERT INTO ADDRBOOK VALUES (?, ?)', [name, address]
    end
  end

  def get_all
    SQLite3::Database.open(DB_PATH) do |db|
      db.execute 'SELECT * FROM ADDRBOOK' do |rows|
        rows.each do |row|
          p row
        end
      end
    end
  end

  module_function :create_tables, :add, :get_all
end

DB.add('Tom', 'Dianmen station')
DB.get_all