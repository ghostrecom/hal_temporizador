# hal_temporizador - timer for RedM [Standalone]

Autor  https://github.com/ghostrecom

### Installation

- Add the resource to your `server.cfg` to make sure it's started at server startup:

```
 [start timer]
 
 local statusTemp = exports.hal_temporizador:run(true,70) -- time in seconds

```


```
 [stop timer]
 
 local statusTemp = exports.hal_temporizador:run(false,0)

```

- statusTemp will return false when the time is up

## Legal
License
hal_temporizador - temporizador para RedM [Standalone]

Copyright (C) 2022 Halcon_BM

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
