## Repository Template Super class
class BaseRepository

    def initialize(model)
        @model = model
    end  
    #gets all the records  
    def all
        @model.all
    end

    # Locates record by certain Id
    def find
        @model.find(id)
    end

    # Creates the new record with a parameter
    def create(params)
        @model.create(params)
    end

    # Updates the record with the parameter
    def update(record, params)
        if record.update(params)
            record
        else
            false
        end        
    
    end

    # Deletes the record
    def destroy(record)
        record.destroy
    end

    #instance of record unsved
    def new(params ={})
        @model.new(params)
    end 
end