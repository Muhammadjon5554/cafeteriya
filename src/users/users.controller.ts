import { Controller,Body,Post } from '@nestjs/common';
import { UsersService } from './users.service';


@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {
}




@Post('/login')

signIn(@Body() signInDto: any) {
  this.usersService.signIn(signInDto)
  }
}