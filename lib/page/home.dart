import 'package:blocworkflow/bloc/operation_bloc.dart';
import 'package:blocworkflow/model/operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: BlocConsumer<OperationBloc, OperationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is OperationInitial) {
            return buildOperationInitial(context);
          } else if (state is OperationRefresh) {
            return buildOperationRefresh(context, state.result);
          }
        },
      ),
    );
  }

  Widget buildOperationInitial(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 60,
                width: 200,
                child: TextField(
                    style: TextStyle(
                        fontFamily: 'normMed', fontWeight: FontWeight.w900),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontFamily: 'normReg',
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Colors.black),
                      hintText: ('Enter 1st Number'),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onChanged: (firstNumber) {
                      Operation.firstNumber = double.parse(firstNumber);
                    }),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 60,
                width: 200,
                child: TextField(
                    style: TextStyle(
                        fontFamily: 'normMed', fontWeight: FontWeight.w900),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontFamily: 'normReg',
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Colors.black),
                      hintText: ('Enter 2nd Number'),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onChanged: (secondNumber) {
                      Operation.secondNumber = double.parse(secondNumber);
                    }),
              ),
              SizedBox(height: 15),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '0',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: 'Add',
                    onPressed: () {
                      onTriggerAdd(context);
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    heroTag: 'Minus',
                    onPressed: () {
                      onTriggerMinus(context);
                    },
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    heroTag: 'Multiply',
                    onPressed: () {
                      onTriggerMultiply(context);
                    },
                    tooltip: 'Multiply',
                    child: Text('X'),
                  ),
                  FloatingActionButton(
                    heroTag: 'Divide',
                    onPressed: () {
                      onTriggerDivide(context);
                    },
                    tooltip: 'Divide',
                    child: Text('/'),
                  ),
                ],
              ),
              SizedBox(height: 40),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.black,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(20.0),
                splashColor: Colors.grey,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text(
                  'Login Page',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ]));
  }

  Widget buildOperationRefresh(BuildContext context, double result) {
    return Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 60,
                width: 200,
                child: TextField(
                  style: TextStyle(
                      fontFamily: 'normMed', fontWeight: FontWeight.w900),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontFamily: 'normReg',
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: Colors.black),
                    hintText: ('Enter 1st Number'),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  onChanged: (firstNumber) {
                    Operation.firstNumber = double.parse(firstNumber);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: 60,
                width: 200,
                child: TextField(
                  style: TextStyle(
                      fontFamily: 'normMed', fontWeight: FontWeight.w900),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontFamily: 'normReg',
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: Colors.black),
                    hintText: ('Enter 2nd Number'),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  onChanged: (secondNumber) {
                    print(secondNumber);
                    Operation.secondNumber = double.parse(secondNumber);
                  },
                ),
              ),
              SizedBox(height: 15),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$result',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: 'Add',
                    onPressed: () {
                      onTriggerAdd(context);
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    heroTag: 'Minus',
                    onPressed: () {
                      onTriggerMinus(context);
                    },
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    heroTag: 'Multiply',
                    onPressed: () {
                      onTriggerMultiply(context);
                    },
                    tooltip: 'Multiply',
                    child: Text('X'),
                  ),
                  FloatingActionButton(
                    heroTag: 'Divide',
                    onPressed: () {
                      onTriggerDivide(context);
                    },
                    tooltip: 'Divide',
                    child: Text('/'),
                  ),
                ],
              ),
              SizedBox(height: 40),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.black,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(20.0),
                splashColor: Colors.grey,
                onPressed: () {},
                child: Text(
                  'Login Page',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ]));
  }

  void onTriggerAdd(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc
        .add(OnClickAdd(Operation.firstNumber, Operation.secondNumber));
  }

  void onTriggerMinus(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc
        .add(OnClickMinus(Operation.firstNumber, Operation.secondNumber));
  }

  void onTriggerMultiply(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc
        .add(OnClickMultiply(Operation.firstNumber, Operation.secondNumber));
  }

  void onTriggerDivide(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc
        .add(OnClickDivide(Operation.firstNumber, Operation.secondNumber));
  }
}
