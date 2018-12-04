#!/bin/bash
function mycal
{
    awk "BEGIN {print \"Result: \" $* }";
}