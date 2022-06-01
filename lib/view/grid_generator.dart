import 'package:calculator_basic/global.dart';
import 'package:calculator_basic/widgets/button_widget.dart';
import 'package:flutter/material.dart';

List<Widget> calcGrid = [
  ButtonWidget.orange(label: "AC", onTap: () => calculator.clean()),
  ButtonWidget.red(label: "DEL", onTap: () => calculator.delete()),
  ButtonWidget.blue(label: "%", onTap: () => calculator.addUserInput("%")),
  ButtonWidget.blue(label: "/", onTap: () => calculator.addUserInput("/")),
  ButtonWidget.white(label: "7", onTap: () => calculator.addUserInput("7")),
  ButtonWidget.white(label: "8", onTap: () => calculator.addUserInput("8")),
  ButtonWidget.white(label: "9", onTap: () => calculator.addUserInput("9")),
  ButtonWidget.blue(label: "*", onTap: () => calculator.addUserInput("*")),
  ButtonWidget.white(label: "4", onTap: () => calculator.addUserInput("4")),
  ButtonWidget.white(label: "5", onTap: () => calculator.addUserInput("5")),
  ButtonWidget.white(label: "6", onTap: () => calculator.addUserInput("6")),
  ButtonWidget.blue(label: "-", onTap: () => calculator.addUserInput("-")),
  ButtonWidget.white(label: "1", onTap: () => calculator.addUserInput("1")),
  ButtonWidget.white(label: "2", onTap: () => calculator.addUserInput("2")),
  ButtonWidget.white(label: "3", onTap: () => calculator.addUserInput("3")),
  ButtonWidget.blue(label: "+", onTap: () => calculator.addUserInput("+")),
  ButtonWidget.blue(label: "00", onTap: () => calculator.addUserInput("00")),
  ButtonWidget.white(label: "0", onTap: () => calculator.addUserInput("0")),
  ButtonWidget.blue(label: ".", onTap: () =>calculator.addUserInput(".")),
  ButtonWidget.blue(label: "=", onTap: () => calculator.result()),
];
