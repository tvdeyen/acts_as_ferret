module ActsAsFerret
  module LogFile
    LOG_FILE_NAME = 'acts_as_ferret.log'

    def self.get_or_create_log_file
      logfile = "#{Rails.root || '.'}/log/#{LOG_FILE_NAME}"
      unless File.exists?(logfile)
        FileUtils.mkdir_p('log')
        FileUtils.touch(logfile)
      end
      logfile
    end

  end
end
