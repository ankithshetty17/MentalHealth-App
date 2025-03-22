const Meditatiton = require("../../domain/entities/meditation");
const UseCaseInterface = require("../interfaces/UseCaseInterface");

class GetDailyQuotes extends UseCaseInterface{
    constructor(quotesRepository){
        super();
        this.quotesRepository = quotesRepository;
    }
    async execute(){
        const quotesData = await this.quotesRepository.getDailyQuotes();
        return new Meditatiton({text:quotesData});
    }
}


module.exports = GetDailyQuotes;