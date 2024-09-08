const Logger = require('logplease');
const logger = Logger.create('numeros');


exports.esPar = (num) => {
    if(num %2 === 0){
        logger.info(`El número ${num} es par`)
    }else {
        logger.error(`El número ${num} no es par`)
    }  
};


