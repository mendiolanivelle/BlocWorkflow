import 'package:blocworkflow/bloc/operation_bloc.dart';
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
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '0',
                style: Theme.of(context).textTheme.display1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerAdd(context);
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerMinus(context);
                    },
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerMultiply(context);
                    },
                    tooltip: 'Multiply',
                    child: Text('X'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerDivide(context);
                    },
                    tooltip: 'Divide',
                    child: Text('/'),
                  ),
                ],
              ),
            ]));
  }

  Widget buildOperationRefresh(BuildContext context, double result) {
    return Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$result',
                style: Theme.of(context).textTheme.display1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerAdd(context);
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerMinus(context);
                    },
                    tooltip: 'Decrement',
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerMultiply(context);
                    },
                    tooltip: 'Multiply',
                    child: Text('X'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      onTriggerDivide(context);
                    },
                    tooltip: 'Divide',
                    child: Text('/'),
                  ),
                ],
              ),
            ]));
  }

  void onTriggerAdd(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc.add(OnClickAdd());
  }

  void onTriggerMinus(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc.add(OnClickMinus());
  }

  void onTriggerMultiply(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc.add(OnClickMultiply());
  }

  void onTriggerDivide(BuildContext context) {
    final operationBloc = BlocProvider.of<OperationBloc>(context);
    operationBloc.add(OnClickDivide());
  }
}
