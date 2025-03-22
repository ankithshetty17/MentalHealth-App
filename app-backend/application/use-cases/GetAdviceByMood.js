const UseCaseInterface = require("../interfaces/UseCaseInterface");

class GetAdviceByMood extends UseCaseInterface{
    constructor(quotesRepository){
        super();
        this.quotesRepository = quotesRepository;
    }
    async execute(mood){
        const quotesData = await this.quotesRepository.getAdviceByMood(mood);
        return new Meditatiton({text:quotesData});
    }
}


module.exports = GetAdviceByMood;