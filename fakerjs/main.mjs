import { faker } from '@faker-js/faker';
import fs from "fs";
let data ="INSERT INTO account VALUES";

const number = 500_000;

for(let i =1; i<=number; i++){
    let firstName = faker.name.firstName();
    let lastName = faker.name.lastName();

    let nickname = faker.name.findName();
    let birthday = faker.date.betweens('1960-01-01','2000-01-01',1)[0].toISOString().split('T')[0]; 
    let email = faker.internet.email();
    let gender = faker.name.gender(true);
    let profile_pic = firstName+".png";
        data+= `\n (${i},'${firstName.replace('\'','')}','${lastName.replace('\'', '')}','${nickname.replace('\'', '')}','${birthday}','${gender}','${email}','${profile_pic.replace('\'', '')}')`  
        i+1<number? data+=",":data+=";";
    }

fs.writeFile('result.sql', data, (err)=>{
    if(err){
        console.log(err);
    }
})