class Grade

    # @val   : integer
    # @valid : boolean
    
    def initialize value="" 
        if value.to_s.to_i > 0
            @val = value.to_i
            @valid = true
        else
            value = Grade.VALUES[value.to_sym]
            @valid = true if value 
            @val =  value || 4
        end
    end

    def is_valid?
        @valid
    end

    def val 
        @val 
    end

    def val= v 
        @val = v 
    end
    
    ### Class method ###
    def self.VALUES 
        {
            :low =>  1, 
            :med =>  4, 
            :high => 7
        }
    end

end
