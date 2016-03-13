//
//  TestCppClass.hpp
//  BH-example
//
//  Created by Piyush Singh on 13/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

#ifndef TestCppClass_hpp
#define TestCppClass_hpp

#include <stdio.h>
#include <string>

class TestCppClass {
public:
    TestCppClass();
    TestCppClass(const std::string &title);
    ~TestCppClass();
    
public:
    void setTitle(const std::string &title);
    const std::string &getTtile();
    
private:
    std::string m_title;
};

#endif /* TestCppClass_hpp */
