//
//  TestCppClass.cpp
//  BH-example
//
//  Created by Piyush Singh on 13/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

#include "TestCppClass.hpp"

TestCppClass::TestCppClass() {}
TestCppClass::TestCppClass(const std::string &title): m_title(title) {}
TestCppClass::~TestCppClass() {}
void TestCppClass::setTitle(const std::string &title)
{
    m_title = title;
}
const std::string &TestCppClass::getTtile()
{
    return m_title;
}