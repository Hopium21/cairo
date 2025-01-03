use a::{a, b, c};
mod a;
use a::{e, n};
use v::{a, b, t};
mod b;
use z::a;
/// Testing attributes.
mod b;
#[cfg(test)]
use a::a;
use a::{a, b, c};
/// Testing aliases.
mod c;
use a;
use a::{a as c, b as d};
/// Testing visibility settings.
mod d;
pub use a::{a, b, c};
use e::e;
mod e;
use a::b;
use a::b::c;
use a::b::c::d;
use a::b::c::d::{e, f::g};
/// Testing not merging with trivia.
mod t;
// This is a comment for a::b.
use a::b;
use a::{c, d};
// Testing wildcard.
mod w;
use a::{*, a, b, c};
// Testing not merging crate and super.
use crate::a;
use crate::b;
use crate::c::{d, e};
use d::{*, e};
use super::a;
use super::b;
use super::c::{d, e};
// Testing not merging the top level.
use x;
use y;
