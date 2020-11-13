(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param f64) (result f64)))
  (type (;6;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64 i32) (result i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32 i64 i64 i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i32) (result i32)))
  (type (;14;) (func (param f64 i32) (result f64)))
  (type (;15;) (func (param i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 f64 f64 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;20;) (func (param i64 i32 i32) (result i32)))
  (type (;21;) (func (param f64 i32) (result i32)))
  (type (;22;) (func (param i32 i32 i64 i32) (result i64)))
  (type (;23;) (func (param f64) (result i64)))
  (type (;24;) (func (param i64 i64) (result f64)))
  (type (;25;) (func (param f64 i32 f64 f64 i32) (result f64)))
  (type (;26;) (func (param f64 f64) (result f64)))
  (type (;27;) (func (param f64 f64 i32) (result f64)))
  (type (;28;) (func (param f64 f64 f64 f64 f64) (result f64)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 11)))
  (import "env" "emscripten_memcpy_big" (func (;1;) (type 0)))
  (import "env" "setTempRet0" (func (;2;) (type 3)))
  (import "env" "memory" (memory (;0;) 256 32768))
  (func (;3;) (type 8))
  (func (;4;) (type 5) (param f64) (result f64)
    (local i32 i32 i32 i32 i32 f64 f64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    f64.store offset=8
    local.get 3
    f64.load offset=8
    local.set 6
    local.get 6
    call 10
    local.set 7
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set 0
    local.get 7
    return)
  (func (;5;) (type 28) (param f64 f64 f64 f64 f64) (result f64)
    (local i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 5
    i32.const 48
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    local.get 0
    f64.store offset=40
    local.get 7
    local.get 1
    f64.store offset=32
    local.get 7
    local.get 2
    f64.store offset=24
    local.get 7
    local.get 3
    f64.store offset=16
    local.get 7
    local.get 4
    f64.store offset=8
    local.get 7
    f64.load offset=40
    local.set 8
    local.get 7
    f64.load offset=32
    local.set 9
    local.get 8
    local.get 9
    f64.sub
    local.set 10
    local.get 7
    f64.load offset=24
    local.set 11
    local.get 7
    f64.load offset=32
    local.set 12
    local.get 11
    local.get 12
    f64.sub
    local.set 13
    local.get 10
    local.get 13
    f64.div
    local.set 14
    local.get 7
    f64.load offset=8
    local.set 15
    local.get 7
    f64.load offset=16
    local.set 16
    local.get 15
    local.get 16
    f64.sub
    local.set 17
    local.get 14
    local.get 17
    f64.mul
    local.set 18
    local.get 7
    f64.load offset=16
    local.set 19
    local.get 18
    local.get 19
    f64.add
    local.set 20
    local.get 20
    return)
  (func (;6;) (type 18) (param i32 i32 f64 f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 f32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 5
    i32.const 48
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set 0
    i32.const 0
    local.set 8
    local.get 7
    local.get 0
    i32.store offset=44
    local.get 7
    local.get 1
    i32.store offset=40
    local.get 7
    local.get 2
    f64.store offset=32
    local.get 7
    local.get 3
    f64.store offset=24
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    i32.load offset=20
    local.set 9
    local.get 7
    i32.load offset=40
    local.set 10
    i32.const 3
    local.set 11
    local.get 10
    local.get 11
    i32.shl
    local.set 12
    i32.const 0
    local.set 13
    local.get 9
    local.get 13
    local.get 12
    call 17
    drop
    local.get 7
    local.get 8
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 7
        i32.load offset=16
        local.set 14
        local.get 7
        i32.load offset=40
        local.set 15
        local.get 14
        local.set 16
        local.get 15
        local.set 17
        local.get 16
        local.get 17
        i32.lt_s
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        local.get 20
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 21
        f64.const 0x1p+1 (;=2;)
        local.set 55
        f64.const -0x1p+0 (;=-1;)
        local.set 56
        f64.const 0x1p+0 (;=1;)
        local.set 57
        f64.const 0x1.921fb54442d18p+1 (;=3.14159;)
        local.set 58
        local.get 7
        i32.load offset=44
        local.set 22
        local.get 7
        i32.load offset=16
        local.set 23
        local.get 23
        f32.convert_i32_s
        local.set 49
        f32.const 0x1p-1 (;=0.5;)
        local.set 50
        local.get 49
        local.get 50
        f32.add
        local.set 51
        local.get 51
        f64.promote_f32
        local.set 59
        local.get 58
        local.get 59
        f64.mul
        local.set 60
        local.get 7
        i32.load offset=40
        local.set 24
        local.get 24
        f64.convert_i32_s
        local.set 61
        local.get 60
        local.get 61
        f64.div
        local.set 62
        local.get 62
        call 10
        local.set 63
        local.get 7
        f64.load offset=32
        local.set 64
        local.get 7
        f64.load offset=24
        local.set 65
        local.get 63
        local.get 56
        local.get 57
        local.get 64
        local.get 65
        call 5
        local.set 66
        local.get 66
        local.get 22
        call_indirect (type 5)
        local.set 67
        local.get 67
        local.get 55
        f64.mul
        local.set 68
        local.get 7
        i32.load offset=40
        local.set 25
        local.get 25
        f64.convert_i32_s
        local.set 69
        local.get 68
        local.get 69
        f64.div
        local.set 70
        local.get 7
        local.get 70
        f64.store offset=8
        local.get 7
        local.get 21
        i32.store offset=4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.load offset=4
            local.set 26
            local.get 7
            i32.load offset=40
            local.set 27
            local.get 26
            local.set 28
            local.get 27
            local.set 29
            local.get 28
            local.get 29
            i32.lt_s
            local.set 30
            i32.const 1
            local.set 31
            local.get 30
            local.get 31
            i32.and
            local.set 32
            local.get 32
            i32.eqz
            br_if 1 (;@3;)
            local.get 7
            f64.load offset=8
            local.set 71
            local.get 7
            i32.load offset=4
            local.set 33
            local.get 33
            f64.convert_i32_s
            local.set 72
            f64.const 0x1.921fb54442d18p+1 (;=3.14159;)
            local.set 73
            local.get 72
            local.get 73
            f64.mul
            local.set 74
            local.get 7
            i32.load offset=16
            local.set 34
            local.get 34
            f32.convert_i32_s
            local.set 52
            f32.const 0x1p-1 (;=0.5;)
            local.set 53
            local.get 52
            local.get 53
            f32.add
            local.set 54
            local.get 54
            f64.promote_f32
            local.set 75
            local.get 74
            local.get 75
            f64.mul
            local.set 76
            local.get 7
            i32.load offset=40
            local.set 35
            local.get 35
            f64.convert_i32_s
            local.set 77
            local.get 76
            local.get 77
            f64.div
            local.set 78
            local.get 78
            call 10
            local.set 79
            local.get 71
            local.get 79
            f64.mul
            local.set 80
            local.get 7
            i32.load offset=20
            local.set 36
            local.get 7
            i32.load offset=4
            local.set 37
            i32.const 3
            local.set 38
            local.get 37
            local.get 38
            i32.shl
            local.set 39
            local.get 36
            local.get 39
            i32.add
            local.set 40
            local.get 40
            f64.load
            local.set 81
            local.get 81
            local.get 80
            f64.add
            local.set 82
            local.get 40
            local.get 82
            f64.store
            local.get 7
            i32.load offset=4
            local.set 41
            i32.const 1
            local.set 42
            local.get 41
            local.get 42
            i32.add
            local.set 43
            local.get 7
            local.get 43
            i32.store offset=4
            br 0 (;@4;)
          end
          unreachable
        end
        local.get 7
        i32.load offset=16
        local.set 44
        i32.const 1
        local.set 45
        local.get 44
        local.get 45
        i32.add
        local.set 46
        local.get 7
        local.get 46
        i32.store offset=16
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 48
    local.set 47
    local.get 7
    local.get 47
    i32.add
    local.set 48
    local.get 48
    global.set 0
    return)
  (func (;7;) (type 25) (param f64 i32 f64 f64 i32) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 5
    i32.const 80
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set 0
    i32.const 2
    local.set 8
    f64.const 0x1p+1 (;=2;)
    local.set 28
    f64.const -0x1p+0 (;=-1;)
    local.set 29
    f64.const 0x1p+0 (;=1;)
    local.set 30
    local.get 7
    local.get 0
    f64.store offset=72
    local.get 7
    local.get 1
    i32.store offset=68
    local.get 7
    local.get 2
    f64.store offset=56
    local.get 7
    local.get 3
    f64.store offset=48
    local.get 7
    local.get 4
    i32.store offset=44
    local.get 7
    local.get 30
    f64.store offset=32
    local.get 7
    f64.load offset=72
    local.set 31
    local.get 7
    f64.load offset=56
    local.set 32
    local.get 7
    f64.load offset=48
    local.set 33
    local.get 31
    local.get 32
    local.get 33
    local.get 29
    local.get 30
    call 5
    local.set 34
    local.get 7
    local.get 34
    f64.store offset=24
    local.get 7
    i32.load offset=44
    local.set 9
    local.get 9
    f64.load
    local.set 35
    local.get 35
    local.get 28
    f64.div
    local.set 36
    local.get 7
    i32.load offset=44
    local.set 10
    local.get 10
    f64.load offset=8
    local.set 37
    local.get 7
    f64.load offset=24
    local.set 38
    local.get 37
    local.get 38
    f64.mul
    local.set 39
    local.get 36
    local.get 39
    f64.add
    local.set 40
    local.get 7
    local.get 40
    f64.store offset=8
    local.get 7
    f64.load offset=24
    local.set 41
    local.get 28
    local.get 41
    f64.mul
    local.set 42
    local.get 7
    local.get 42
    f64.store offset=72
    local.get 7
    local.get 8
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 7
        i32.load offset=4
        local.set 11
        local.get 7
        i32.load offset=68
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.load offset=44
        local.set 18
        local.get 7
        i32.load offset=4
        local.set 19
        i32.const 3
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 18
        local.get 21
        i32.add
        local.set 22
        local.get 22
        f64.load
        local.set 43
        local.get 7
        f64.load offset=72
        local.set 44
        local.get 7
        f64.load offset=24
        local.set 45
        local.get 44
        local.get 45
        f64.mul
        local.set 46
        local.get 7
        f64.load offset=32
        local.set 47
        local.get 46
        local.get 47
        f64.sub
        local.set 48
        local.get 7
        local.get 48
        f64.store offset=16
        local.get 43
        local.get 48
        f64.mul
        local.set 49
        local.get 7
        f64.load offset=8
        local.set 50
        local.get 50
        local.get 49
        f64.add
        local.set 51
        local.get 7
        local.get 51
        f64.store offset=8
        local.get 7
        f64.load offset=24
        local.set 52
        local.get 7
        local.get 52
        f64.store offset=32
        local.get 7
        f64.load offset=16
        local.set 53
        local.get 7
        local.get 53
        f64.store offset=24
        local.get 7
        i32.load offset=4
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 7
        local.get 25
        i32.store offset=4
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 7
    f64.load offset=8
    local.set 54
    i32.const 80
    local.set 26
    local.get 7
    local.get 26
    i32.add
    local.set 27
    local.get 27
    global.set 0
    local.get 54
    return)
  (func (;8;) (type 2) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 0
    i32.const 192
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 1
    local.set 3
    i32.const 10
    local.set 4
    i32.const 96
    local.set 5
    local.get 2
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    f64.const 0x1p+0 (;=1;)
    local.set 58
    i32.const 0
    local.set 8
    local.get 8
    f64.convert_i32_s
    local.set 59
    local.get 2
    local.get 8
    i32.store offset=188
    local.get 2
    local.get 59
    f64.store offset=88
    local.get 2
    local.get 58
    f64.store offset=80
    local.get 2
    f64.load offset=88
    local.set 60
    local.get 2
    f64.load offset=80
    local.set 61
    local.get 3
    local.get 4
    local.get 60
    local.get 61
    local.get 7
    call 6
    i32.const 1024
    local.set 9
    i32.const 0
    local.set 10
    local.get 9
    local.get 10
    call 54
    drop
    i32.const 0
    local.set 11
    local.get 2
    local.get 11
    i32.store offset=76
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 10
        local.set 12
        local.get 2
        i32.load offset=76
        local.set 13
        local.get 13
        local.set 14
        local.get 12
        local.set 15
        local.get 14
        local.get 15
        i32.lt_s
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        local.get 18
        i32.eqz
        br_if 1 (;@1;)
        i32.const 96
        local.set 19
        local.get 2
        local.get 19
        i32.add
        local.set 20
        local.get 20
        local.set 21
        local.get 2
        i32.load offset=76
        local.set 22
        i32.const 3
        local.set 23
        local.get 22
        local.get 23
        i32.shl
        local.set 24
        local.get 21
        local.get 24
        i32.add
        local.set 25
        local.get 25
        f64.load
        local.set 62
        local.get 2
        local.get 62
        f64.store
        i32.const 1038
        local.set 26
        local.get 26
        local.get 2
        call 54
        drop
        local.get 2
        i32.load offset=76
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 2
        local.get 29
        i32.store offset=76
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 0
    local.set 30
    i32.const 1043
    local.set 31
    local.get 31
    call 57
    drop
    local.get 2
    local.get 30
    i32.store offset=72
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 20
        local.set 32
        local.get 2
        i32.load offset=72
        local.set 33
        local.get 33
        local.set 34
        local.get 32
        local.set 35
        local.get 34
        local.get 35
        i32.le_s
        local.set 36
        i32.const 1
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        local.get 38
        i32.eqz
        br_if 1 (;@1;)
        i32.const 10
        local.set 39
        i32.const 96
        local.set 40
        local.get 2
        local.get 40
        i32.add
        local.set 41
        local.get 41
        local.set 42
        i32.const 0
        local.set 43
        local.get 43
        f64.convert_i32_s
        local.set 63
        f64.const 0x1.4p+4 (;=20;)
        local.set 64
        local.get 2
        i32.load offset=72
        local.set 44
        local.get 44
        f64.convert_i32_s
        local.set 65
        local.get 2
        f64.load offset=88
        local.set 66
        local.get 2
        f64.load offset=80
        local.set 67
        local.get 65
        local.get 63
        local.get 64
        local.get 66
        local.get 67
        call 5
        local.set 68
        local.get 2
        local.get 68
        f64.store offset=64
        local.get 2
        f64.load offset=64
        local.set 69
        local.get 69
        call 4
        local.set 70
        local.get 2
        local.get 70
        f64.store offset=56
        local.get 2
        f64.load offset=64
        local.set 71
        local.get 2
        f64.load offset=88
        local.set 72
        local.get 2
        f64.load offset=80
        local.set 73
        local.get 71
        local.get 39
        local.get 72
        local.get 73
        local.get 42
        call 7
        local.set 74
        local.get 2
        local.get 74
        f64.store offset=48
        local.get 2
        f64.load offset=64
        local.set 75
        local.get 2
        f64.load offset=56
        local.set 76
        local.get 2
        f64.load offset=48
        local.set 77
        local.get 2
        f64.load offset=48
        local.set 78
        local.get 2
        f64.load offset=56
        local.set 79
        local.get 78
        local.get 79
        f64.sub
        local.set 80
        i32.const 40
        local.set 45
        local.get 2
        local.get 45
        i32.add
        local.set 46
        local.get 46
        local.get 80
        f64.store
        i32.const 32
        local.set 47
        local.get 2
        local.get 47
        i32.add
        local.set 48
        local.get 48
        local.get 77
        f64.store
        local.get 2
        local.get 76
        f64.store offset=24
        local.get 2
        local.get 75
        f64.store offset=16
        i32.const 1104
        local.set 49
        i32.const 16
        local.set 50
        local.get 2
        local.get 50
        i32.add
        local.set 51
        local.get 49
        local.get 51
        call 54
        drop
        local.get 2
        i32.load offset=72
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.add
        local.set 54
        local.get 2
        local.get 54
        i32.store offset=72
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 0
    local.set 55
    i32.const 192
    local.set 56
    local.get 2
    local.get 56
    i32.add
    local.set 57
    local.get 57
    global.set 0
    local.get 55
    return)
  (func (;9;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call 8
    local.set 2
    local.get 2
    return)
  (func (;10;) (type 5) (param f64) (result f64)
    (local i32 i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.reinterpret_f64
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.const 2147483647
        i32.and
        local.tee 2
        i32.const 1072243195
        i32.gt_u
        br_if 0 (;@2;)
        f64.const 0x1p+0 (;=1;)
        local.set 3
        local.get 2
        i32.const 1044816030
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        f64.const 0x0p+0 (;=0;)
        call 15
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.const 2146435072
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        f64.sub
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 1
              call 11
              i32.const 3
              i32.and
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            f64.load
            local.get 1
            f64.load offset=8
            call 15
            local.set 3
            br 3 (;@1;)
          end
          local.get 1
          f64.load
          local.get 1
          f64.load offset=8
          i32.const 1
          call 12
          f64.neg
          local.set 3
          br 2 (;@1;)
        end
        local.get 1
        f64.load
        local.get 1
        f64.load offset=8
        call 15
        f64.neg
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      f64.load
      local.get 1
      f64.load offset=8
      i32.const 1
      call 12
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;11;) (type 21) (param f64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 f64 f64 f64 f64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i64.reinterpret_f64
            local.tee 7
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 3
            i32.const 2147483647
            i32.and
            local.tee 4
            i32.const 1074752122
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 1048575
            i32.and
            i32.const 598523
            i32.eq
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 4
              i32.const 1073928572
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 7
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                f64.const -0x1.921fb544p+0 (;=-1.5708;)
                f64.add
                local.tee 0
                f64.const -0x1.0b4611a626331p-34 (;=-6.0771e-11;)
                f64.add
                local.tee 8
                f64.store
                local.get 1
                local.get 0
                local.get 8
                f64.sub
                f64.const -0x1.0b4611a626331p-34 (;=-6.0771e-11;)
                f64.add
                f64.store offset=8
                i32.const 1
                local.set 3
                br 5 (;@1;)
              end
              local.get 1
              local.get 0
              f64.const 0x1.921fb544p+0 (;=1.5708;)
              f64.add
              local.tee 0
              f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
              f64.add
              local.tee 8
              f64.store
              local.get 1
              local.get 0
              local.get 8
              f64.sub
              f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
              f64.add
              f64.store offset=8
              i32.const -1
              local.set 3
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 7
              i64.const 0
              i64.lt_s
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              f64.const -0x1.921fb544p+1 (;=-3.14159;)
              f64.add
              local.tee 0
              f64.const -0x1.0b4611a626331p-33 (;=-1.21542e-10;)
              f64.add
              local.tee 8
              f64.store
              local.get 1
              local.get 0
              local.get 8
              f64.sub
              f64.const -0x1.0b4611a626331p-33 (;=-1.21542e-10;)
              f64.add
              f64.store offset=8
              i32.const 2
              local.set 3
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            f64.const 0x1.921fb544p+1 (;=3.14159;)
            f64.add
            local.tee 0
            f64.const 0x1.0b4611a626331p-33 (;=1.21542e-10;)
            f64.add
            local.tee 8
            f64.store
            local.get 1
            local.get 0
            local.get 8
            f64.sub
            f64.const 0x1.0b4611a626331p-33 (;=1.21542e-10;)
            f64.add
            f64.store offset=8
            i32.const -2
            local.set 3
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 4
            i32.const 1075594811
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              i32.const 1075183036
              i32.gt_u
              br_if 0 (;@5;)
              local.get 4
              i32.const 1074977148
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 7
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                f64.const -0x1.2d97c7f3p+2 (;=-4.71239;)
                f64.add
                local.tee 0
                f64.const -0x1.90e91a79394cap-33 (;=-1.82313e-10;)
                f64.add
                local.tee 8
                f64.store
                local.get 1
                local.get 0
                local.get 8
                f64.sub
                f64.const -0x1.90e91a79394cap-33 (;=-1.82313e-10;)
                f64.add
                f64.store offset=8
                i32.const 3
                local.set 3
                br 5 (;@1;)
              end
              local.get 1
              local.get 0
              f64.const 0x1.2d97c7f3p+2 (;=4.71239;)
              f64.add
              local.tee 0
              f64.const 0x1.90e91a79394cap-33 (;=1.82313e-10;)
              f64.add
              local.tee 8
              f64.store
              local.get 1
              local.get 0
              local.get 8
              f64.sub
              f64.const 0x1.90e91a79394cap-33 (;=1.82313e-10;)
              f64.add
              f64.store offset=8
              i32.const -3
              local.set 3
              br 4 (;@1;)
            end
            local.get 4
            i32.const 1075388923
            i32.eq
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 7
              i64.const 0
              i64.lt_s
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              f64.const -0x1.921fb544p+2 (;=-6.28319;)
              f64.add
              local.tee 0
              f64.const -0x1.0b4611a626331p-32 (;=-2.43084e-10;)
              f64.add
              local.tee 8
              f64.store
              local.get 1
              local.get 0
              local.get 8
              f64.sub
              f64.const -0x1.0b4611a626331p-32 (;=-2.43084e-10;)
              f64.add
              f64.store offset=8
              i32.const 4
              local.set 3
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            f64.const 0x1.921fb544p+2 (;=6.28319;)
            f64.add
            local.tee 0
            f64.const 0x1.0b4611a626331p-32 (;=2.43084e-10;)
            f64.add
            local.tee 8
            f64.store
            local.get 1
            local.get 0
            local.get 8
            f64.sub
            f64.const 0x1.0b4611a626331p-32 (;=2.43084e-10;)
            f64.add
            f64.store offset=8
            i32.const -4
            local.set 3
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1094263290
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 0
        local.get 0
        f64.const 0x1.45f306dc9c883p-1 (;=0.63662;)
        f64.mul
        f64.const 0x1.8p+52 (;=6.7554e+15;)
        f64.add
        f64.const -0x1.8p+52 (;=-6.7554e+15;)
        f64.add
        local.tee 8
        f64.const -0x1.921fb544p+0 (;=-1.5708;)
        f64.mul
        f64.add
        local.tee 9
        local.get 8
        f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
        f64.mul
        local.tee 10
        f64.sub
        local.tee 0
        f64.store
        local.get 4
        i32.const 20
        i32.shr_u
        local.tee 5
        local.get 0
        i64.reinterpret_f64
        i64.const 52
        i64.shr_u
        i32.wrap_i64
        i32.const 2047
        i32.and
        i32.sub
        i32.const 17
        i32.lt_s
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.trunc_f64_s
            local.set 3
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 3
        end
        block  ;; label = @3
          local.get 6
          br_if 0 (;@3;)
          local.get 1
          local.get 9
          local.get 8
          f64.const 0x1.0b4611a6p-34 (;=6.0771e-11;)
          f64.mul
          local.tee 0
          f64.sub
          local.tee 11
          local.get 8
          f64.const 0x1.3198a2e037073p-69 (;=2.02227e-21;)
          f64.mul
          local.get 9
          local.get 11
          f64.sub
          local.get 0
          f64.sub
          f64.sub
          local.tee 10
          f64.sub
          local.tee 0
          f64.store
          block  ;; label = @4
            local.get 5
            local.get 0
            i64.reinterpret_f64
            i64.const 52
            i64.shr_u
            i32.wrap_i64
            i32.const 2047
            i32.and
            i32.sub
            i32.const 50
            i32.ge_s
            br_if 0 (;@4;)
            local.get 11
            local.set 9
            br 1 (;@3;)
          end
          local.get 1
          local.get 11
          local.get 8
          f64.const 0x1.3198a2ep-69 (;=2.02227e-21;)
          f64.mul
          local.tee 0
          f64.sub
          local.tee 9
          local.get 8
          f64.const 0x1.b839a252049c1p-104 (;=8.47843e-32;)
          f64.mul
          local.get 11
          local.get 9
          f64.sub
          local.get 0
          f64.sub
          f64.sub
          local.tee 10
          f64.sub
          local.tee 0
          f64.store
        end
        local.get 1
        local.get 9
        local.get 0
        f64.sub
        local.get 10
        f64.sub
        f64.store offset=8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 2146435072
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        local.get 0
        f64.sub
        local.tee 0
        f64.store
        local.get 1
        local.get 0
        f64.store offset=8
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 7
      i64.const 4503599627370495
      i64.and
      i64.const 4710765210229538816
      i64.or
      f64.reinterpret_i64
      local.set 0
      i32.const 0
      local.set 3
      i32.const 1
      local.set 6
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.add
        local.get 3
        i32.const 3
        i32.shl
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.trunc_f64_s
            local.set 5
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 5
        end
        local.get 3
        local.get 5
        f64.convert_i32_s
        local.tee 8
        f64.store
        local.get 0
        local.get 8
        f64.sub
        f64.const 0x1p+24 (;=1.67772e+07;)
        f64.mul
        local.set 0
        i32.const 1
        local.set 3
        local.get 6
        i32.const 1
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        local.get 5
        br_if 0 (;@2;)
      end
      local.get 2
      local.get 0
      f64.store offset=32
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br_if 0 (;@3;)
          i32.const 2
          local.set 3
          br 1 (;@2;)
        end
        i32.const 1
        local.set 6
        loop  ;; label = @3
          local.get 6
          local.tee 3
          i32.const -1
          i32.add
          local.set 6
          local.get 2
          i32.const 16
          i32.add
          local.get 3
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      local.get 4
      i32.const 20
      i32.shr_u
      i32.const -1046
      i32.add
      local.get 3
      i32.const 1
      i32.add
      i32.const 1
      call 14
      local.set 3
      block  ;; label = @2
        local.get 7
        i64.const -1
        i64.gt_s
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        f64.load
        f64.neg
        f64.store
        local.get 1
        local.get 2
        f64.load offset=8
        f64.neg
        f64.store offset=8
        i32.const 0
        local.get 3
        i32.sub
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i64.load
      i64.store
      local.get 1
      local.get 2
      i64.load offset=8
      i64.store offset=8
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 3)
  (func (;12;) (type 27) (param f64 f64 i32) (result f64)
    (local f64 f64 f64)
    local.get 0
    local.get 0
    f64.mul
    local.tee 3
    local.get 3
    local.get 3
    f64.mul
    f64.mul
    local.get 3
    f64.const 0x1.5d93a5acfd57cp-33 (;=1.58969e-10;)
    f64.mul
    f64.const -0x1.ae5e68a2b9cebp-26 (;=-2.50508e-08;)
    f64.add
    f64.mul
    local.get 3
    local.get 3
    f64.const 0x1.71de357b1fe7dp-19 (;=2.75573e-06;)
    f64.mul
    f64.const -0x1.a01a019c161d5p-13 (;=-0.000198413;)
    f64.add
    f64.mul
    f64.const 0x1.111111110f8a6p-7 (;=0.00833333;)
    f64.add
    f64.add
    local.set 4
    local.get 3
    local.get 0
    f64.mul
    local.set 5
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      local.get 4
      f64.mul
      f64.const -0x1.5555555555549p-3 (;=-0.166667;)
      f64.add
      f64.mul
      local.get 0
      f64.add
      return
    end
    local.get 0
    local.get 3
    local.get 1
    f64.const 0x1p-1 (;=0.5;)
    f64.mul
    local.get 5
    local.get 4
    f64.mul
    f64.sub
    f64.mul
    local.get 1
    f64.sub
    local.get 5
    f64.const 0x1.5555555555549p-3 (;=0.166667;)
    f64.mul
    f64.add
    f64.sub)
  (func (;13;) (type 5) (param f64) (result f64)
    local.get 0
    f64.floor)
  (func (;14;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 f64 f64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 5
    global.set 0
    local.get 2
    i32.const -3
    i32.add
    i32.const 24
    i32.div_s
    local.tee 6
    i32.const 0
    local.get 6
    i32.const 0
    i32.gt_s
    select
    local.tee 7
    i32.const -24
    i32.mul
    local.get 2
    i32.add
    local.set 8
    block  ;; label = @1
      local.get 4
      i32.const 2
      i32.shl
      i32.const 1152
      i32.add
      i32.load
      local.tee 9
      local.get 3
      i32.const -1
      i32.add
      local.tee 10
      i32.add
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 9
      local.get 3
      i32.add
      local.set 11
      local.get 7
      local.get 10
      i32.sub
      local.set 2
      i32.const 0
      local.set 6
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
            f64.const 0x0p+0 (;=0;)
            local.set 22
            br 1 (;@3;)
          end
          local.get 2
          i32.const 2
          i32.shl
          i32.const 1168
          i32.add
          i32.load
          f64.convert_i32_s
          local.set 22
        end
        local.get 5
        i32.const 320
        i32.add
        local.get 6
        i32.const 3
        i32.shl
        i32.add
        local.get 22
        f64.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        local.get 11
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 8
    i32.const -24
    i32.add
    local.set 12
    i32.const 0
    local.set 11
    local.get 9
    i32.const 0
    local.get 9
    i32.const 0
    i32.gt_s
    select
    local.set 13
    local.get 3
    i32.const 1
    i32.lt_s
    local.set 14
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 14
          i32.eqz
          br_if 0 (;@3;)
          f64.const 0x0p+0 (;=0;)
          local.set 22
          br 1 (;@2;)
        end
        local.get 11
        local.get 10
        i32.add
        local.set 6
        i32.const 0
        local.set 2
        f64.const 0x0p+0 (;=0;)
        local.set 22
        loop  ;; label = @3
          local.get 22
          local.get 0
          local.get 2
          i32.const 3
          i32.shl
          i32.add
          f64.load
          local.get 5
          i32.const 320
          i32.add
          local.get 6
          local.get 2
          i32.sub
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.mul
          f64.add
          local.set 22
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          local.get 3
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 11
      i32.const 3
      i32.shl
      i32.add
      local.get 22
      f64.store
      local.get 11
      local.get 13
      i32.eq
      local.set 2
      local.get 11
      i32.const 1
      i32.add
      local.set 11
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    i32.const 47
    local.get 8
    i32.sub
    local.set 15
    i32.const 48
    local.get 8
    i32.sub
    local.set 16
    local.get 8
    i32.const -25
    i32.add
    local.set 17
    local.get 9
    local.set 11
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        local.get 11
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.set 22
        i32.const 0
        local.set 2
        local.get 11
        local.set 6
        block  ;; label = @3
          local.get 11
          i32.const 1
          i32.lt_s
          local.tee 10
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            i32.const 2
            i32.shl
            local.set 13
            block  ;; label = @5
              block  ;; label = @6
                local.get 22
                f64.const 0x1p-24 (;=5.96046e-08;)
                f64.mul
                local.tee 23
                f64.abs
                f64.const 0x1p+31 (;=2.14748e+09;)
                f64.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 23
                i32.trunc_f64_s
                local.set 14
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 14
            end
            local.get 5
            i32.const 480
            i32.add
            local.get 13
            i32.add
            local.set 13
            block  ;; label = @5
              block  ;; label = @6
                local.get 22
                local.get 14
                f64.convert_i32_s
                local.tee 23
                f64.const -0x1p+24 (;=-1.67772e+07;)
                f64.mul
                f64.add
                local.tee 22
                f64.abs
                f64.const 0x1p+31 (;=2.14748e+09;)
                f64.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 22
                i32.trunc_f64_s
                local.set 14
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 14
            end
            local.get 13
            local.get 14
            i32.store
            local.get 5
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            i32.const 3
            i32.shl
            i32.add
            f64.load
            local.get 23
            f64.add
            local.set 22
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 11
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 22
        local.get 12
        call 16
        local.set 22
        block  ;; label = @3
          block  ;; label = @4
            local.get 22
            local.get 22
            f64.const 0x1p-3 (;=0.125;)
            f64.mul
            call 13
            f64.const -0x1p+3 (;=-8;)
            f64.mul
            f64.add
            local.tee 22
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 22
            i32.trunc_f64_s
            local.set 18
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 18
        end
        local.get 22
        local.get 18
        f64.convert_i32_s
        f64.sub
        local.set 22
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 12
                  i32.const 1
                  i32.lt_s
                  local.tee 19
                  br_if 0 (;@7;)
                  local.get 11
                  i32.const 2
                  i32.shl
                  local.get 5
                  i32.const 480
                  i32.add
                  i32.add
                  i32.const -4
                  i32.add
                  local.tee 2
                  local.get 2
                  i32.load
                  local.tee 2
                  local.get 2
                  local.get 16
                  i32.shr_s
                  local.tee 2
                  local.get 16
                  i32.shl
                  i32.sub
                  local.tee 6
                  i32.store
                  local.get 6
                  local.get 15
                  i32.shr_s
                  local.set 20
                  local.get 2
                  local.get 18
                  i32.add
                  local.set 18
                  br 1 (;@6;)
                end
                local.get 12
                br_if 1 (;@5;)
                local.get 11
                i32.const 2
                i32.shl
                local.get 5
                i32.const 480
                i32.add
                i32.add
                i32.const -4
                i32.add
                i32.load
                i32.const 23
                i32.shr_s
                local.set 20
              end
              local.get 20
              i32.const 1
              i32.lt_s
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            i32.const 2
            local.set 20
            local.get 22
            f64.const 0x1p-1 (;=0.5;)
            f64.ge
            i32.const 1
            i32.xor
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 20
            br 1 (;@3;)
          end
          i32.const 0
          local.set 2
          i32.const 0
          local.set 14
          block  ;; label = @4
            local.get 10
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 5
              i32.const 480
              i32.add
              local.get 2
              i32.const 2
              i32.shl
              i32.add
              local.tee 10
              i32.load
              local.set 6
              i32.const 16777215
              local.set 13
              block  ;; label = @6
                block  ;; label = @7
                  local.get 14
                  br_if 0 (;@7;)
                  i32.const 16777216
                  local.set 13
                  local.get 6
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 14
                  br 1 (;@6;)
                end
                local.get 10
                local.get 13
                local.get 6
                i32.sub
                i32.store
                i32.const 1
                local.set 14
              end
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              local.get 11
              i32.ne
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 19
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 17
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 11
              i32.const 2
              i32.shl
              local.get 5
              i32.const 480
              i32.add
              i32.add
              i32.const -4
              i32.add
              local.tee 2
              local.get 2
              i32.load
              i32.const 8388607
              i32.and
              i32.store
              br 1 (;@4;)
            end
            local.get 11
            i32.const 2
            i32.shl
            local.get 5
            i32.const 480
            i32.add
            i32.add
            i32.const -4
            i32.add
            local.tee 2
            local.get 2
            i32.load
            i32.const 4194303
            i32.and
            i32.store
          end
          local.get 18
          i32.const 1
          i32.add
          local.set 18
          local.get 20
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          f64.const 0x1p+0 (;=1;)
          local.get 22
          f64.sub
          local.set 22
          i32.const 2
          local.set 20
          local.get 14
          i32.eqz
          br_if 0 (;@3;)
          local.get 22
          f64.const 0x1p+0 (;=1;)
          local.get 12
          call 16
          f64.sub
          local.set 22
        end
        block  ;; label = @3
          local.get 22
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          local.get 11
          local.set 2
          block  ;; label = @4
            local.get 11
            local.get 9
            i32.le_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 5
              i32.const 480
              i32.add
              local.get 2
              i32.const -1
              i32.add
              local.tee 2
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.get 6
              i32.or
              local.set 6
              local.get 2
              local.get 9
              i32.gt_s
              br_if 0 (;@5;)
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 12
            local.set 8
            loop  ;; label = @5
              local.get 8
              i32.const -24
              i32.add
              local.set 8
              local.get 5
              i32.const 480
              i32.add
              local.get 11
              i32.const -1
              i32.add
              local.tee 11
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
            unreachable
          end
          i32.const 1
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.tee 6
            i32.const 1
            i32.add
            local.set 2
            local.get 5
            i32.const 480
            i32.add
            local.get 9
            local.get 6
            i32.sub
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 11
          i32.add
          local.set 13
          loop  ;; label = @4
            local.get 5
            i32.const 320
            i32.add
            local.get 11
            local.get 3
            i32.add
            local.tee 6
            i32.const 3
            i32.shl
            i32.add
            local.get 11
            i32.const 1
            i32.add
            local.tee 11
            local.get 7
            i32.add
            i32.const 2
            i32.shl
            i32.const 1168
            i32.add
            i32.load
            f64.convert_i32_s
            f64.store
            i32.const 0
            local.set 2
            f64.const 0x0p+0 (;=0;)
            local.set 22
            block  ;; label = @5
              local.get 3
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 22
                local.get 0
                local.get 2
                i32.const 3
                i32.shl
                i32.add
                f64.load
                local.get 5
                i32.const 320
                i32.add
                local.get 6
                local.get 2
                i32.sub
                i32.const 3
                i32.shl
                i32.add
                f64.load
                f64.mul
                f64.add
                local.set 22
                local.get 2
                i32.const 1
                i32.add
                local.tee 2
                local.get 3
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 5
            local.get 11
            i32.const 3
            i32.shl
            i32.add
            local.get 22
            f64.store
            local.get 11
            local.get 13
            i32.lt_s
            br_if 0 (;@4;)
          end
          local.get 13
          local.set 11
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 22
          i32.const 0
          local.get 12
          i32.sub
          call 16
          local.tee 22
          f64.const 0x1p+24 (;=1.67772e+07;)
          f64.ge
          i32.const 1
          i32.xor
          br_if 0 (;@3;)
          local.get 11
          i32.const 2
          i32.shl
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 22
              f64.const 0x1p-24 (;=5.96046e-08;)
              f64.mul
              local.tee 23
              f64.abs
              f64.const 0x1p+31 (;=2.14748e+09;)
              f64.lt
              i32.eqz
              br_if 0 (;@5;)
              local.get 23
              i32.trunc_f64_s
              local.set 2
              br 1 (;@4;)
            end
            i32.const -2147483648
            local.set 2
          end
          local.get 5
          i32.const 480
          i32.add
          local.get 3
          i32.add
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 22
              local.get 2
              f64.convert_i32_s
              f64.const -0x1p+24 (;=-1.67772e+07;)
              f64.mul
              f64.add
              local.tee 22
              f64.abs
              f64.const 0x1p+31 (;=2.14748e+09;)
              f64.lt
              i32.eqz
              br_if 0 (;@5;)
              local.get 22
              i32.trunc_f64_s
              local.set 6
              br 1 (;@4;)
            end
            i32.const -2147483648
            local.set 6
          end
          local.get 3
          local.get 6
          i32.store
          local.get 11
          i32.const 1
          i32.add
          local.set 11
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 22
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 22
            i32.trunc_f64_s
            local.set 2
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 2
        end
        local.get 12
        local.set 8
      end
      local.get 5
      i32.const 480
      i32.add
      local.get 11
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.store
    end
    f64.const 0x1p+0 (;=1;)
    local.get 8
    call 16
    local.set 22
    block  ;; label = @1
      local.get 11
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      local.get 11
      local.set 2
      loop  ;; label = @2
        local.get 5
        local.get 2
        i32.const 3
        i32.shl
        i32.add
        local.get 22
        local.get 5
        i32.const 480
        i32.add
        local.get 2
        i32.const 2
        i32.shl
        i32.add
        i32.load
        f64.convert_i32_s
        f64.mul
        f64.store
        local.get 22
        f64.const 0x1p-24 (;=5.96046e-08;)
        f64.mul
        local.set 22
        local.get 2
        i32.const 0
        i32.gt_s
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 13
      local.get 11
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 9
      i32.const 0
      local.get 9
      i32.const 0
      i32.gt_s
      select
      local.set 9
      local.get 11
      local.set 6
      loop  ;; label = @2
        local.get 9
        local.get 13
        local.get 9
        local.get 13
        i32.lt_u
        select
        local.set 0
        local.get 11
        local.get 6
        i32.sub
        local.set 14
        i32.const 0
        local.set 2
        f64.const 0x0p+0 (;=0;)
        local.set 22
        loop  ;; label = @3
          local.get 22
          local.get 2
          i32.const 3
          i32.shl
          i32.const 3936
          i32.add
          f64.load
          local.get 5
          local.get 2
          local.get 6
          i32.add
          i32.const 3
          i32.shl
          i32.add
          f64.load
          f64.mul
          f64.add
          local.set 22
          local.get 2
          local.get 0
          i32.ne
          local.set 3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 160
        i32.add
        local.get 14
        i32.const 3
        i32.shl
        i32.add
        local.get 22
        f64.store
        local.get 6
        i32.const -1
        i32.add
        local.set 6
        local.get 13
        local.get 11
        i32.ne
        local.set 2
        local.get 13
        i32.const 1
        i32.add
        local.set 13
        local.get 2
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_table 1 (;@4;) 2 (;@3;) 2 (;@3;) 0 (;@5;) 4 (;@1;)
            end
            f64.const 0x0p+0 (;=0;)
            local.set 24
            block  ;; label = @5
              local.get 11
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 160
              i32.add
              local.get 11
              i32.const 3
              i32.shl
              i32.add
              f64.load
              local.set 22
              local.get 11
              local.set 2
              loop  ;; label = @6
                local.get 5
                i32.const 160
                i32.add
                local.get 2
                i32.const 3
                i32.shl
                i32.add
                local.get 22
                local.get 5
                i32.const 160
                i32.add
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                i32.const 3
                i32.shl
                i32.add
                local.tee 6
                f64.load
                local.tee 23
                local.get 23
                local.get 22
                f64.add
                local.tee 23
                f64.sub
                f64.add
                f64.store
                local.get 6
                local.get 23
                f64.store
                local.get 2
                i32.const 1
                i32.gt_s
                local.set 6
                local.get 23
                local.set 22
                local.get 3
                local.set 2
                local.get 6
                br_if 0 (;@6;)
              end
              local.get 11
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 160
              i32.add
              local.get 11
              i32.const 3
              i32.shl
              i32.add
              f64.load
              local.set 22
              local.get 11
              local.set 2
              loop  ;; label = @6
                local.get 5
                i32.const 160
                i32.add
                local.get 2
                i32.const 3
                i32.shl
                i32.add
                local.get 22
                local.get 5
                i32.const 160
                i32.add
                local.get 2
                i32.const -1
                i32.add
                local.tee 3
                i32.const 3
                i32.shl
                i32.add
                local.tee 6
                f64.load
                local.tee 23
                local.get 23
                local.get 22
                f64.add
                local.tee 23
                f64.sub
                f64.add
                f64.store
                local.get 6
                local.get 23
                f64.store
                local.get 2
                i32.const 2
                i32.gt_s
                local.set 6
                local.get 23
                local.set 22
                local.get 3
                local.set 2
                local.get 6
                br_if 0 (;@6;)
              end
              f64.const 0x0p+0 (;=0;)
              local.set 24
              local.get 11
              i32.const 1
              i32.le_s
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 24
                local.get 5
                i32.const 160
                i32.add
                local.get 11
                i32.const 3
                i32.shl
                i32.add
                f64.load
                f64.add
                local.set 24
                local.get 11
                i32.const 2
                i32.gt_s
                local.set 2
                local.get 11
                i32.const -1
                i32.add
                local.set 11
                local.get 2
                br_if 0 (;@6;)
              end
            end
            local.get 20
            br_if 2 (;@2;)
            local.get 1
            local.get 5
            i64.load offset=160
            i64.store
            local.get 5
            i64.load offset=168
            local.set 21
            local.get 1
            local.get 24
            f64.store offset=16
            local.get 1
            local.get 21
            i64.store offset=8
            br 3 (;@1;)
          end
          f64.const 0x0p+0 (;=0;)
          local.set 22
          block  ;; label = @4
            local.get 11
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 22
              local.get 5
              i32.const 160
              i32.add
              local.get 11
              i32.const 3
              i32.shl
              i32.add
              f64.load
              f64.add
              local.set 22
              local.get 11
              i32.const 0
              i32.gt_s
              local.set 2
              local.get 11
              i32.const -1
              i32.add
              local.set 11
              local.get 2
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 22
          f64.neg
          local.get 22
          local.get 20
          select
          f64.store
          br 2 (;@1;)
        end
        f64.const 0x0p+0 (;=0;)
        local.set 22
        block  ;; label = @3
          local.get 11
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 11
          local.set 2
          loop  ;; label = @4
            local.get 22
            local.get 5
            i32.const 160
            i32.add
            local.get 2
            i32.const 3
            i32.shl
            i32.add
            f64.load
            f64.add
            local.set 22
            local.get 2
            i32.const 0
            i32.gt_s
            local.set 3
            local.get 2
            i32.const -1
            i32.add
            local.set 2
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 22
        f64.neg
        local.get 22
        local.get 20
        select
        f64.store
        local.get 5
        f64.load offset=160
        local.get 22
        f64.sub
        local.set 22
        i32.const 1
        local.set 2
        block  ;; label = @3
          local.get 11
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 22
            local.get 5
            i32.const 160
            i32.add
            local.get 2
            i32.const 3
            i32.shl
            i32.add
            f64.load
            f64.add
            local.set 22
            local.get 2
            local.get 11
            i32.ne
            local.set 3
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 22
        f64.neg
        local.get 22
        local.get 20
        select
        f64.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 5
      f64.load offset=160
      f64.neg
      f64.store
      local.get 5
      f64.load offset=168
      local.set 22
      local.get 1
      local.get 24
      f64.neg
      f64.store offset=16
      local.get 1
      local.get 22
      f64.neg
      f64.store offset=8
    end
    local.get 5
    i32.const 560
    i32.add
    global.set 0
    local.get 18
    i32.const 7
    i32.and)
  (func (;15;) (type 26) (param f64 f64) (result f64)
    (local f64 f64 f64)
    f64.const 0x1p+0 (;=1;)
    local.get 0
    local.get 0
    f64.mul
    local.tee 2
    f64.const 0x1p-1 (;=0.5;)
    f64.mul
    local.tee 3
    f64.sub
    local.tee 4
    f64.const 0x1p+0 (;=1;)
    local.get 4
    f64.sub
    local.get 3
    f64.sub
    local.get 2
    local.get 2
    local.get 2
    local.get 2
    f64.const 0x1.a01a019cb159p-16 (;=2.48016e-05;)
    f64.mul
    f64.const -0x1.6c16c16c15177p-10 (;=-0.00138889;)
    f64.add
    f64.mul
    f64.const 0x1.555555555554cp-5 (;=0.0416667;)
    f64.add
    f64.mul
    local.get 2
    local.get 2
    f64.mul
    local.tee 3
    local.get 3
    f64.mul
    local.get 2
    local.get 2
    f64.const -0x1.8fae9be8838d4p-37 (;=-1.13596e-11;)
    f64.mul
    f64.const 0x1.1ee9ebdb4b1c4p-29 (;=2.08757e-09;)
    f64.add
    f64.mul
    f64.const -0x1.27e4f809c52adp-22 (;=-2.75573e-07;)
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.get 0
    local.get 1
    f64.mul
    f64.sub
    f64.add
    f64.add)
  (func (;16;) (type 14) (param f64 i32) (result f64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1024
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        f64.const 0x1p+1023 (;=8.98847e+307;)
        f64.mul
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.ge_s
          br_if 0 (;@3;)
          local.get 1
          i32.const -1023
          i32.add
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        f64.const 0x1p+1023 (;=8.98847e+307;)
        f64.mul
        local.set 0
        local.get 1
        i32.const 3069
        local.get 1
        i32.const 3069
        i32.lt_s
        select
        i32.const -2046
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.const -1023
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      f64.const 0x1p-1022 (;=2.22507e-308;)
      f64.mul
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const -2045
        i32.le_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 1022
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      f64.const 0x1p-1022 (;=2.22507e-308;)
      f64.mul
      local.set 0
      local.get 1
      i32.const -3066
      local.get 1
      i32.const -3066
      i32.gt_s
      select
      i32.const 2044
      i32.add
      local.set 1
    end
    local.get 0
    local.get 1
    i32.const 1023
    i32.add
    i64.extend_i32_u
    i64.const 52
    i64.shl
    f64.reinterpret_i64
    f64.mul)
  (func (;17;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 6
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store offset=24
        local.get 1
        local.get 6
        i64.store offset=16
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;18;) (type 2) (result i32)
    i32.const 4944)
  (func (;19;) (type 1) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    call 18
    local.get 0
    i32.store
    i32.const -1)
  (func (;20;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    i32.const 2
    local.set 7
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 0
            call 19
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load offset=12
              local.tee 4
              i32.eq
              br_if 2 (;@3;)
              local.get 4
              i32.const -1
              i32.le_s
              br_if 3 (;@2;)
              local.get 1
              local.get 4
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 4
              local.get 8
              i32.const 0
              local.get 5
              select
              i32.sub
              local.tee 8
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 5
              select
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 6
              local.get 4
              i32.sub
              local.set 6
              local.get 0
              i32.load offset=60
              local.get 1
              i32.const 8
              i32.add
              local.get 1
              local.get 5
              select
              local.tee 1
              local.get 7
              local.get 5
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 0
              call 19
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.const -1
          i32.store offset=12
          local.get 6
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.load offset=4
      i32.sub
      local.set 4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 4)
  (func (;21;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;22;) (type 7) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;23;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func (;24;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            local.get 4
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            i32.const 0
            i32.ne
            local.set 3
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 4
        loop  ;; label = @3
          local.get 0
          i32.load
          local.get 4
          i32.xor
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 2
          i32.const -4
          i32.add
          local.tee 2
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 3
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;25;) (type 2) (result i32)
    i32.const 4700)
  (func (;26;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            call 27
            i32.load offset=176
            i32.load
            br_if 0 (;@4;)
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            call 18
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 55296
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          block  ;; label = @4
            local.get 1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
          call 18
          i32.const 25
          i32.store
        end
        i32.const -1
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func (;27;) (type 2) (result i32)
    call 25)
  (func (;28;) (type 4) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call 26)
  (func (;29;) (type 14) (param f64 i32) (result f64)
    (local i32 i64)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 3
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 2
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.const 0x0p+0 (;=0;)
            f64.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call 29
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 2
      i32.const -1022
      i32.add
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func (;30;) (type 10) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;31;) (type 10) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shr_u
        local.set 1
        i64.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shl
      local.get 1
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shr_u
      i64.or
      local.set 1
      local.get 2
      local.get 4
      i64.shr_u
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;32;) (type 24) (param i64 i64) (result f64)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.const 9223372036854775807
        i64.and
        local.tee 4
        i64.const -4323737117252386816
        i64.add
        local.get 4
        i64.const -4899634919602388992
        i64.add
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        local.set 4
        block  ;; label = @3
          local.get 0
          i64.const 1152921504606846975
          i64.and
          local.tee 0
          i64.const 576460752303423489
          i64.lt_u
          br_if 0 (;@3;)
          local.get 4
          i64.const 4611686018427387905
          i64.add
          local.set 5
          br 2 (;@1;)
        end
        local.get 4
        i64.const 4611686018427387904
        i64.add
        local.set 5
        local.get 0
        i64.const 576460752303423488
        i64.xor
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 5
        i64.const 1
        i64.and
        local.get 5
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i64.eqz
        local.get 4
        i64.const 9223090561878065152
        i64.lt_u
        local.get 4
        i64.const 9223090561878065152
        i64.eq
        select
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685247
        i64.and
        i64.const 9221120237041090560
        i64.or
        local.set 5
        br 1 (;@1;)
      end
      i64.const 9218868437227405312
      local.set 5
      local.get 4
      i64.const 4899634919602388991
      i64.gt_u
      br_if 0 (;@1;)
      i64.const 0
      local.set 5
      local.get 4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee 3
      i32.const 15249
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.add
      local.get 0
      local.get 1
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.tee 4
      local.get 3
      i32.const -15233
      i32.add
      call 30
      local.get 2
      local.get 0
      local.get 4
      i32.const 15361
      local.get 3
      i32.sub
      call 31
      local.get 2
      i64.load
      local.tee 4
      i64.const 60
      i64.shr_u
      local.get 2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set 5
      block  ;; label = @2
        local.get 4
        i64.const 1152921504606846975
        i64.and
        local.get 2
        i64.load offset=16
        local.get 2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.tee 4
        i64.const 576460752303423489
        i64.lt_u
        br_if 0 (;@2;)
        local.get 5
        i64.const 1
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i64.const 576460752303423488
      i64.xor
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 1
      i64.and
      local.get 5
      i64.add
      local.set 5
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 5
    local.get 1
    i64.const -9223372036854775808
    i64.and
    i64.or
    f64.reinterpret_i64)
  (func (;33;) (type 3) (param i32))
  (func (;34;) (type 3) (param i32))
  (func (;35;) (type 2) (result i32)
    i32.const 6056
    call 33
    i32.const 6064)
  (func (;36;) (type 8)
    i32.const 6056
    call 34)
  (func (;37;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store8 offset=74
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;38;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 512
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call 1
      drop
      local.get 0
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 4
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const -64
          i32.add
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load
            i32.store
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=4
            local.get 2
            local.get 1
            i32.load offset=8
            i32.store offset=8
            local.get 2
            local.get 1
            i32.load offset=12
            i32.store offset=12
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=16
            local.get 2
            local.get 1
            i32.load offset=20
            i32.store offset=20
            local.get 2
            local.get 1
            i32.load offset=24
            i32.store offset=24
            local.get 2
            local.get 1
            i32.load offset=28
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=32
            i32.store offset=32
            local.get 2
            local.get 1
            i32.load offset=36
            i32.store offset=36
            local.get 2
            local.get 1
            i32.load offset=40
            i32.store offset=40
            local.get 2
            local.get 1
            i32.load offset=44
            i32.store offset=44
            local.get 2
            local.get 1
            i32.load offset=48
            i32.store offset=48
            local.get 2
            local.get 1
            i32.load offset=52
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load offset=56
            i32.store offset=56
            local.get 2
            local.get 1
            i32.load offset=60
            i32.store offset=60
            local.get 1
            i32.const 64
            i32.add
            local.set 1
            local.get 2
            i32.const 64
            i32.add
            local.tee 2
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        unreachable
      end
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        local.get 0
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.le_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;39;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call 37
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 6
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        local.tee 4
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 2
        i32.load offset=20
        local.set 5
        local.get 3
        local.set 6
      end
      local.get 5
      local.get 0
      local.get 1
      call 38
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 6
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;40;) (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=76
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 3
        call 39
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      call 58
      local.set 5
      local.get 0
      local.get 4
      local.get 3
      call 39
      local.set 0
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      call 59
    end
    block  ;; label = @1
      local.get 0
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 0
    local.get 1
    i32.div_u)
  (func (;41;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 2
    local.get 5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 17
    drop
    local.get 5
    local.get 5
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call 42
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call 58
        local.set 2
      end
      local.get 0
      i32.load
      local.set 6
      block  ;; label = @2
        local.get 0
        i32.load8_s offset=74
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.const -33
        i32.and
        i32.store
      end
      local.get 6
      i32.const 32
      i32.and
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=48
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 5
          i32.const 200
          i32.add
          local.get 5
          i32.const 80
          i32.add
          local.get 5
          i32.const 160
          i32.add
          local.get 3
          local.get 4
          call 42
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        i32.const 80
        i32.store offset=48
        local.get 0
        local.get 5
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 0
        local.get 5
        i32.store offset=28
        local.get 0
        local.get 5
        i32.store offset=20
        local.get 0
        i32.load offset=44
        local.set 7
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call 42
        local.set 1
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 7
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        local.set 3
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 1
        i32.const -1
        local.get 3
        select
        local.set 1
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 3
      local.get 6
      i32.or
      i32.store
      i32.const -1
      local.get 1
      local.get 3
      i32.const 32
      i32.and
      select
      local.set 1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 59
    end
    local.get 5
    i32.const 208
    i32.add
    global.set 0
    local.get 1)
  (func (;42;) (type 19) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    local.get 1
    i32.store offset=76
    local.get 7
    i32.const 55
    i32.add
    local.set 8
    local.get 7
    i32.const 56
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    i32.const 0
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 11
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 2147483647
            local.get 11
            i32.sub
            i32.le_s
            br_if 0 (;@4;)
            call 18
            i32.const 61
            i32.store
            i32.const -1
            local.set 11
            br 1 (;@3;)
          end
          local.get 1
          local.get 11
          i32.add
          local.set 11
        end
        local.get 7
        i32.load offset=76
        local.tee 12
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 12
                  i32.load8_u
                  local.tee 13
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 13
                          i32.const 255
                          i32.and
                          local.tee 13
                          br_if 0 (;@11;)
                          local.get 1
                          local.set 13
                          br 1 (;@10;)
                        end
                        local.get 13
                        i32.const 37
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 1
                        local.set 13
                        loop  ;; label = @11
                          local.get 1
                          i32.load8_u offset=1
                          i32.const 37
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 7
                          local.get 1
                          i32.const 2
                          i32.add
                          local.tee 14
                          i32.store offset=76
                          local.get 13
                          i32.const 1
                          i32.add
                          local.set 13
                          local.get 1
                          i32.load8_u offset=2
                          local.set 15
                          local.get 14
                          local.set 1
                          local.get 15
                          i32.const 37
                          i32.eq
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 13
                      local.get 12
                      i32.sub
                      local.set 1
                      block  ;; label = @10
                        local.get 0
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 12
                        local.get 1
                        call 43
                      end
                      local.get 1
                      br_if 7 (;@2;)
                      local.get 7
                      i32.load offset=76
                      i32.load8_s offset=1
                      call 23
                      local.set 1
                      local.get 7
                      i32.load offset=76
                      local.set 13
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 13
                          i32.load8_u offset=2
                          i32.const 36
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 13
                          i32.const 3
                          i32.add
                          local.set 1
                          local.get 13
                          i32.load8_s offset=1
                          i32.const -48
                          i32.add
                          local.set 16
                          i32.const 1
                          local.set 10
                          br 1 (;@10;)
                        end
                        local.get 13
                        i32.const 1
                        i32.add
                        local.set 1
                        i32.const -1
                        local.set 16
                      end
                      local.get 7
                      local.get 1
                      i32.store offset=76
                      i32.const 0
                      local.set 17
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_s
                          local.tee 15
                          i32.const -32
                          i32.add
                          local.tee 14
                          i32.const 31
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 1
                          local.set 13
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 17
                        local.get 1
                        local.set 13
                        i32.const 1
                        local.get 14
                        i32.shl
                        local.tee 14
                        i32.const 75913
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 7
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 13
                          i32.store offset=76
                          local.get 14
                          local.get 17
                          i32.or
                          local.set 17
                          local.get 1
                          i32.load8_s offset=1
                          local.tee 15
                          i32.const -32
                          i32.add
                          local.tee 14
                          i32.const 32
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 13
                          local.set 1
                          i32.const 1
                          local.get 14
                          i32.shl
                          local.tee 14
                          i32.const 75913
                          i32.and
                          br_if 0 (;@11;)
                        end
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 15
                          i32.const 42
                          i32.ne
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 13
                              i32.load8_s offset=1
                              call 23
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 7
                              i32.load offset=76
                              local.tee 13
                              i32.load8_u offset=2
                              i32.const 36
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 13
                              i32.load8_s offset=1
                              i32.const 2
                              i32.shl
                              local.get 4
                              i32.add
                              i32.const -192
                              i32.add
                              i32.const 10
                              i32.store
                              local.get 13
                              i32.const 3
                              i32.add
                              local.set 1
                              local.get 13
                              i32.load8_s offset=1
                              i32.const 3
                              i32.shl
                              local.get 3
                              i32.add
                              i32.const -384
                              i32.add
                              i32.load
                              local.set 18
                              i32.const 1
                              local.set 10
                              br 1 (;@12;)
                            end
                            local.get 10
                            br_if 6 (;@6;)
                            i32.const 0
                            local.set 10
                            i32.const 0
                            local.set 18
                            block  ;; label = @13
                              local.get 0
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 2
                              local.get 2
                              i32.load
                              local.tee 1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get 1
                              i32.load
                              local.set 18
                            end
                            local.get 7
                            i32.load offset=76
                            i32.const 1
                            i32.add
                            local.set 1
                          end
                          local.get 7
                          local.get 1
                          i32.store offset=76
                          local.get 18
                          i32.const -1
                          i32.gt_s
                          br_if 1 (;@10;)
                          i32.const 0
                          local.get 18
                          i32.sub
                          local.set 18
                          local.get 17
                          i32.const 8192
                          i32.or
                          local.set 17
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.const 76
                        i32.add
                        call 44
                        local.tee 18
                        i32.const 0
                        i32.lt_s
                        br_if 4 (;@6;)
                        local.get 7
                        i32.load offset=76
                        local.set 1
                      end
                      i32.const -1
                      local.set 19
                      block  ;; label = @10
                        local.get 1
                        i32.load8_u
                        i32.const 46
                        i32.ne
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 1
                          i32.load8_u offset=1
                          i32.const 42
                          i32.ne
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 1
                            i32.load8_s offset=2
                            call 23
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 7
                            i32.load offset=76
                            local.tee 1
                            i32.load8_u offset=3
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load8_s offset=2
                            i32.const 2
                            i32.shl
                            local.get 4
                            i32.add
                            i32.const -192
                            i32.add
                            i32.const 10
                            i32.store
                            local.get 1
                            i32.load8_s offset=2
                            i32.const 3
                            i32.shl
                            local.get 3
                            i32.add
                            i32.const -384
                            i32.add
                            i32.load
                            local.set 19
                            local.get 7
                            local.get 1
                            i32.const 4
                            i32.add
                            local.tee 1
                            i32.store offset=76
                            br 2 (;@10;)
                          end
                          local.get 10
                          br_if 5 (;@6;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 19
                              br 1 (;@12;)
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 1
                            i32.load
                            local.set 19
                          end
                          local.get 7
                          local.get 7
                          i32.load offset=76
                          i32.const 2
                          i32.add
                          local.tee 1
                          i32.store offset=76
                          br 1 (;@10;)
                        end
                        local.get 7
                        local.get 1
                        i32.const 1
                        i32.add
                        i32.store offset=76
                        local.get 7
                        i32.const 76
                        i32.add
                        call 44
                        local.set 19
                        local.get 7
                        i32.load offset=76
                        local.set 1
                      end
                      i32.const 0
                      local.set 13
                      loop  ;; label = @10
                        local.get 13
                        local.set 14
                        i32.const -1
                        local.set 20
                        local.get 1
                        i32.load8_s
                        i32.const -65
                        i32.add
                        i32.const 57
                        i32.gt_u
                        br_if 9 (;@1;)
                        local.get 7
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 15
                        i32.store offset=76
                        local.get 1
                        i32.load8_s
                        local.set 13
                        local.get 15
                        local.set 1
                        local.get 13
                        local.get 14
                        i32.const 58
                        i32.mul
                        i32.add
                        i32.const 3967
                        i32.add
                        i32.load8_u
                        local.tee 13
                        i32.const -1
                        i32.add
                        i32.const 8
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 13
                            i32.const 19
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 13
                            i32.eqz
                            br_if 11 (;@1;)
                            block  ;; label = @13
                              local.get 16
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 16
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 13
                              i32.store
                              local.get 7
                              local.get 3
                              local.get 16
                              i32.const 3
                              i32.shl
                              i32.add
                              i64.load
                              i64.store offset=64
                              br 2 (;@11;)
                            end
                            local.get 0
                            i32.eqz
                            br_if 9 (;@3;)
                            local.get 7
                            i32.const 64
                            i32.add
                            local.get 13
                            local.get 2
                            local.get 6
                            call 45
                            local.get 7
                            i32.load offset=76
                            local.set 15
                            br 2 (;@10;)
                          end
                          i32.const -1
                          local.set 20
                          local.get 16
                          i32.const -1
                          i32.gt_s
                          br_if 10 (;@1;)
                        end
                        i32.const 0
                        local.set 1
                        local.get 0
                        i32.eqz
                        br_if 8 (;@2;)
                      end
                      local.get 17
                      i32.const -65537
                      i32.and
                      local.tee 21
                      local.get 17
                      local.get 17
                      i32.const 8192
                      i32.and
                      select
                      local.set 13
                      i32.const 0
                      local.set 20
                      i32.const 4004
                      local.set 16
                      local.get 9
                      local.set 17
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 15
                                                      i32.const -1
                                                      i32.add
                                                      i32.load8_s
                                                      local.tee 1
                                                      i32.const -33
                                                      i32.and
                                                      local.get 1
                                                      local.get 1
                                                      i32.const 15
                                                      i32.and
                                                      i32.const 3
                                                      i32.eq
                                                      select
                                                      local.get 1
                                                      local.get 14
                                                      select
                                                      local.tee 1
                                                      i32.const -88
                                                      i32.add
                                                      br_table 4 (;@21;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 14 (;@11;) 21 (;@4;) 15 (;@10;) 6 (;@19;) 14 (;@11;) 14 (;@11;) 14 (;@11;) 21 (;@4;) 6 (;@19;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 21 (;@4;) 2 (;@23;) 5 (;@20;) 3 (;@22;) 21 (;@4;) 21 (;@4;) 9 (;@16;) 21 (;@4;) 1 (;@24;) 21 (;@4;) 21 (;@4;) 4 (;@21;) 0 (;@25;)
                                                    end
                                                    local.get 9
                                                    local.set 17
                                                    block  ;; label = @25
                                                      local.get 1
                                                      i32.const -65
                                                      i32.add
                                                      br_table 14 (;@11;) 21 (;@4;) 11 (;@14;) 21 (;@4;) 14 (;@11;) 14 (;@11;) 14 (;@11;) 0 (;@25;)
                                                    end
                                                    local.get 1
                                                    i32.const 83
                                                    i32.eq
                                                    br_if 9 (;@15;)
                                                    br 19 (;@5;)
                                                  end
                                                  i32.const 0
                                                  local.set 20
                                                  i32.const 4004
                                                  local.set 16
                                                  local.get 7
                                                  i64.load offset=64
                                                  local.set 22
                                                  br 5 (;@18;)
                                                end
                                                i32.const 0
                                                local.set 1
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              local.get 14
                                                              i32.const 255
                                                              i32.and
                                                              br_table 0 (;@29;) 1 (;@28;) 2 (;@27;) 3 (;@26;) 4 (;@25;) 27 (;@2;) 5 (;@24;) 6 (;@23;) 27 (;@2;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=64
                                                            local.get 11
                                                            i32.store
                                                            br 26 (;@2;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=64
                                                          local.get 11
                                                          i32.store
                                                          br 25 (;@2;)
                                                        end
                                                        local.get 7
                                                        i32.load offset=64
                                                        local.get 11
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br 24 (;@2;)
                                                      end
                                                      local.get 7
                                                      i32.load offset=64
                                                      local.get 11
                                                      i32.store16
                                                      br 23 (;@2;)
                                                    end
                                                    local.get 7
                                                    i32.load offset=64
                                                    local.get 11
                                                    i32.store8
                                                    br 22 (;@2;)
                                                  end
                                                  local.get 7
                                                  i32.load offset=64
                                                  local.get 11
                                                  i32.store
                                                  br 21 (;@2;)
                                                end
                                                local.get 7
                                                i32.load offset=64
                                                local.get 11
                                                i64.extend_i32_s
                                                i64.store
                                                br 20 (;@2;)
                                              end
                                              local.get 19
                                              i32.const 8
                                              local.get 19
                                              i32.const 8
                                              i32.gt_u
                                              select
                                              local.set 19
                                              local.get 13
                                              i32.const 8
                                              i32.or
                                              local.set 13
                                              i32.const 120
                                              local.set 1
                                            end
                                            i32.const 0
                                            local.set 20
                                            i32.const 4004
                                            local.set 16
                                            local.get 7
                                            i64.load offset=64
                                            local.get 9
                                            local.get 1
                                            i32.const 32
                                            i32.and
                                            call 46
                                            local.set 12
                                            local.get 13
                                            i32.const 8
                                            i32.and
                                            i32.eqz
                                            br_if 3 (;@17;)
                                            local.get 7
                                            i64.load offset=64
                                            i64.eqz
                                            br_if 3 (;@17;)
                                            local.get 1
                                            i32.const 4
                                            i32.shr_u
                                            i32.const 4004
                                            i32.add
                                            local.set 16
                                            i32.const 2
                                            local.set 20
                                            br 3 (;@17;)
                                          end
                                          i32.const 0
                                          local.set 20
                                          i32.const 4004
                                          local.set 16
                                          local.get 7
                                          i64.load offset=64
                                          local.get 9
                                          call 47
                                          local.set 12
                                          local.get 13
                                          i32.const 8
                                          i32.and
                                          i32.eqz
                                          br_if 2 (;@17;)
                                          local.get 19
                                          local.get 9
                                          local.get 12
                                          i32.sub
                                          local.tee 1
                                          i32.const 1
                                          i32.add
                                          local.get 19
                                          local.get 1
                                          i32.gt_s
                                          select
                                          local.set 19
                                          br 2 (;@17;)
                                        end
                                        block  ;; label = @19
                                          local.get 7
                                          i64.load offset=64
                                          local.tee 22
                                          i64.const -1
                                          i64.gt_s
                                          br_if 0 (;@19;)
                                          local.get 7
                                          i64.const 0
                                          local.get 22
                                          i64.sub
                                          local.tee 22
                                          i64.store offset=64
                                          i32.const 1
                                          local.set 20
                                          i32.const 4004
                                          local.set 16
                                          br 1 (;@18;)
                                        end
                                        block  ;; label = @19
                                          local.get 13
                                          i32.const 2048
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          i32.const 1
                                          local.set 20
                                          i32.const 4005
                                          local.set 16
                                          br 1 (;@18;)
                                        end
                                        i32.const 4006
                                        i32.const 4004
                                        local.get 13
                                        i32.const 1
                                        i32.and
                                        local.tee 20
                                        select
                                        local.set 16
                                      end
                                      local.get 22
                                      local.get 9
                                      call 48
                                      local.set 12
                                    end
                                    local.get 13
                                    i32.const -65537
                                    i32.and
                                    local.get 13
                                    local.get 19
                                    i32.const -1
                                    i32.gt_s
                                    select
                                    local.set 13
                                    local.get 7
                                    i64.load offset=64
                                    local.set 22
                                    block  ;; label = @17
                                      local.get 19
                                      br_if 0 (;@17;)
                                      local.get 22
                                      i64.eqz
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 19
                                      local.get 9
                                      local.set 12
                                      br 12 (;@5;)
                                    end
                                    local.get 19
                                    local.get 9
                                    local.get 12
                                    i32.sub
                                    local.get 22
                                    i64.eqz
                                    i32.add
                                    local.tee 1
                                    local.get 19
                                    local.get 1
                                    i32.gt_s
                                    select
                                    local.set 19
                                    br 11 (;@5;)
                                  end
                                  i32.const 0
                                  local.set 20
                                  local.get 7
                                  i32.load offset=64
                                  local.tee 1
                                  i32.const 4014
                                  local.get 1
                                  select
                                  local.tee 12
                                  i32.const 0
                                  local.get 19
                                  call 24
                                  local.tee 1
                                  local.get 12
                                  local.get 19
                                  i32.add
                                  local.get 1
                                  select
                                  local.set 17
                                  local.get 21
                                  local.set 13
                                  local.get 1
                                  local.get 12
                                  i32.sub
                                  local.get 19
                                  local.get 1
                                  select
                                  local.set 19
                                  br 11 (;@4;)
                                end
                                block  ;; label = @15
                                  local.get 19
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load offset=64
                                  local.set 14
                                  br 2 (;@13;)
                                end
                                i32.const 0
                                local.set 1
                                local.get 0
                                i32.const 32
                                local.get 18
                                i32.const 0
                                local.get 13
                                call 49
                                br 2 (;@12;)
                              end
                              local.get 7
                              i32.const 0
                              i32.store offset=12
                              local.get 7
                              local.get 7
                              i64.load offset=64
                              i64.store32 offset=8
                              local.get 7
                              local.get 7
                              i32.const 8
                              i32.add
                              i32.store offset=64
                              i32.const -1
                              local.set 19
                              local.get 7
                              i32.const 8
                              i32.add
                              local.set 14
                            end
                            i32.const 0
                            local.set 1
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 14
                                i32.load
                                local.tee 15
                                i32.eqz
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 7
                                  i32.const 4
                                  i32.add
                                  local.get 15
                                  call 28
                                  local.tee 15
                                  i32.const 0
                                  i32.lt_s
                                  local.tee 12
                                  br_if 0 (;@15;)
                                  local.get 15
                                  local.get 19
                                  local.get 1
                                  i32.sub
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 14
                                  i32.const 4
                                  i32.add
                                  local.set 14
                                  local.get 19
                                  local.get 15
                                  local.get 1
                                  i32.add
                                  local.tee 1
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              i32.const -1
                              local.set 20
                              local.get 12
                              br_if 12 (;@1;)
                            end
                            local.get 0
                            i32.const 32
                            local.get 18
                            local.get 1
                            local.get 13
                            call 49
                            block  ;; label = @13
                              local.get 1
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 1
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 15
                            local.get 7
                            i32.load offset=64
                            local.set 14
                            loop  ;; label = @13
                              local.get 14
                              i32.load
                              local.tee 12
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const 4
                              i32.add
                              local.get 12
                              call 28
                              local.tee 12
                              local.get 15
                              i32.add
                              local.tee 15
                              local.get 1
                              i32.gt_s
                              br_if 1 (;@12;)
                              local.get 0
                              local.get 7
                              i32.const 4
                              i32.add
                              local.get 12
                              call 43
                              local.get 14
                              i32.const 4
                              i32.add
                              local.set 14
                              local.get 15
                              local.get 1
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          i32.const 32
                          local.get 18
                          local.get 1
                          local.get 13
                          i32.const 8192
                          i32.xor
                          call 49
                          local.get 18
                          local.get 1
                          local.get 18
                          local.get 1
                          i32.gt_s
                          select
                          local.set 1
                          br 9 (;@2;)
                        end
                        local.get 0
                        local.get 7
                        f64.load offset=64
                        local.get 18
                        local.get 19
                        local.get 13
                        local.get 1
                        local.get 5
                        call_indirect (type 12)
                        local.set 1
                        br 8 (;@2;)
                      end
                      local.get 7
                      local.get 7
                      i64.load offset=64
                      i64.store8 offset=55
                      i32.const 1
                      local.set 19
                      local.get 8
                      local.set 12
                      local.get 9
                      local.set 17
                      local.get 21
                      local.set 13
                      br 5 (;@4;)
                    end
                    local.get 7
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 14
                    i32.store offset=76
                    local.get 1
                    i32.load8_u offset=1
                    local.set 13
                    local.get 14
                    local.set 1
                    br 0 (;@8;)
                  end
                  unreachable
                end
                local.get 11
                local.set 20
                local.get 0
                br_if 5 (;@1;)
                local.get 10
                i32.eqz
                br_if 3 (;@3;)
                i32.const 1
                local.set 1
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 4
                    local.get 1
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    local.tee 13
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 3
                    local.get 1
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get 13
                    local.get 2
                    local.get 6
                    call 45
                    i32.const 1
                    local.set 20
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 1
                    i32.const 10
                    i32.ne
                    br_if 0 (;@8;)
                    br 7 (;@1;)
                  end
                  unreachable
                end
                i32.const 1
                local.set 20
                local.get 1
                i32.const 10
                i32.ge_u
                br_if 5 (;@1;)
                loop  ;; label = @7
                  local.get 4
                  local.get 1
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.load
                  br_if 1 (;@6;)
                  i32.const 1
                  local.set 20
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 10
                  i32.eq
                  br_if 6 (;@1;)
                  br 0 (;@7;)
                end
                unreachable
              end
              i32.const -1
              local.set 20
              br 4 (;@1;)
            end
            local.get 9
            local.set 17
          end
          local.get 0
          i32.const 32
          local.get 20
          local.get 17
          local.get 12
          i32.sub
          local.tee 15
          local.get 19
          local.get 19
          local.get 15
          i32.lt_s
          select
          local.tee 17
          i32.add
          local.tee 14
          local.get 18
          local.get 18
          local.get 14
          i32.lt_s
          select
          local.tee 1
          local.get 14
          local.get 13
          call 49
          local.get 0
          local.get 16
          local.get 20
          call 43
          local.get 0
          i32.const 48
          local.get 1
          local.get 14
          local.get 13
          i32.const 65536
          i32.xor
          call 49
          local.get 0
          i32.const 48
          local.get 17
          local.get 15
          i32.const 0
          call 49
          local.get 0
          local.get 12
          local.get 15
          call 43
          local.get 0
          i32.const 32
          local.get 1
          local.get 14
          local.get 13
          i32.const 8192
          i32.xor
          call 49
          br 1 (;@2;)
        end
      end
      i32.const 0
      local.set 20
    end
    local.get 7
    i32.const 80
    i32.add
    global.set 0
    local.get 20)
  (func (;43;) (type 15) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 0
      call 39
      drop
    end)
  (func (;44;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load8_s
      call 23
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_s
        local.set 3
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 1
        local.get 2
        i32.load8_s offset=1
        call 23
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;45;) (type 16) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 20
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const -9
                          i32.add
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 10 (;@1;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load
        i64.store
        return
      end
      local.get 0
      local.get 2
      local.get 3
      call_indirect (type 9)
    end)
  (func (;46;) (type 20) (param i64 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 4496
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 4
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;47;) (type 13) (param i64 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 3
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;48;) (type 13) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 4294967296
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;49;) (type 17) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 3
      select
      call 17
      drop
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 43
          local.get 2
          i32.const -256
          i32.add
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 43
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;50;) (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 5
    i32.const 6
    call 41)
  (func (;51;) (type 12) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 6
    global.set 0
    i32.const 0
    local.set 7
    local.get 6
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call 53
        local.tee 24
        i64.const -1
        i64.gt_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 8
        i32.const 4512
        local.set 9
        local.get 1
        f64.neg
        local.tee 1
        call 53
        local.set 24
        br 1 (;@1;)
      end
      i32.const 1
      local.set 8
      block  ;; label = @2
        local.get 4
        i32.const 2048
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4515
        local.set 9
        br 1 (;@1;)
      end
      i32.const 4518
      local.set 9
      local.get 4
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      i32.const 0
      local.set 8
      i32.const 1
      local.set 7
      i32.const 4513
      local.set 9
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 24
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 8
        i32.const 3
        i32.add
        local.tee 10
        local.get 4
        i32.const -65537
        i32.and
        call 49
        local.get 0
        local.get 9
        local.get 8
        call 43
        local.get 0
        i32.const 4539
        i32.const 4543
        local.get 5
        i32.const 32
        i32.and
        local.tee 11
        select
        i32.const 4531
        i32.const 4535
        local.get 11
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 43
        local.get 0
        i32.const 32
        local.get 2
        local.get 10
        local.get 4
        i32.const 8192
        i32.xor
        call 49
        br 1 (;@1;)
      end
      local.get 6
      i32.const 16
      i32.add
      local.set 12
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 6
              i32.const 44
              i32.add
              call 29
              local.tee 1
              local.get 1
              f64.add
              local.tee 1
              f64.const 0x0p+0 (;=0;)
              f64.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 6
              i32.load offset=44
              local.tee 11
              i32.const -1
              i32.add
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 13
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 13
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            local.set 14
            local.get 6
            i32.load offset=44
            local.set 15
            br 1 (;@3;)
          end
          local.get 6
          local.get 11
          i32.const -29
          i32.add
          local.tee 15
          i32.store offset=44
          i32.const 6
          local.get 3
          local.get 3
          i32.const 0
          i32.lt_s
          select
          local.set 14
          local.get 1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set 1
        end
        local.get 6
        i32.const 48
        i32.add
        local.get 6
        i32.const 336
        i32.add
        local.get 15
        i32.const 0
        i32.lt_s
        select
        local.tee 16
        local.set 17
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              f64.const 0x1p+32 (;=4.29497e+09;)
              f64.lt
              local.get 1
              f64.const 0x0p+0 (;=0;)
              f64.ge
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.trunc_f64_u
              local.set 11
              br 1 (;@4;)
            end
            i32.const 0
            local.set 11
          end
          local.get 17
          local.get 11
          i32.store
          local.get 17
          i32.const 4
          i32.add
          local.set 17
          local.get 1
          local.get 11
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 15
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            local.get 15
            local.set 3
            local.get 17
            local.set 11
            local.get 16
            local.set 18
            br 1 (;@3;)
          end
          local.get 16
          local.set 18
          local.get 15
          local.set 3
          loop  ;; label = @4
            local.get 3
            i32.const 29
            local.get 3
            i32.const 29
            i32.lt_s
            select
            local.set 3
            block  ;; label = @5
              local.get 17
              i32.const -4
              i32.add
              local.tee 11
              local.get 18
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i64.extend_i32_u
              local.set 25
              i64.const 0
              local.set 24
              loop  ;; label = @6
                local.get 11
                local.get 11
                i64.load32_u
                local.get 25
                i64.shl
                local.get 24
                i64.const 4294967295
                i64.and
                i64.add
                local.tee 24
                local.get 24
                i64.const 1000000000
                i64.div_u
                local.tee 24
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 11
                i32.const -4
                i32.add
                local.tee 11
                local.get 18
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 24
              i32.wrap_i64
              local.tee 11
              i32.eqz
              br_if 0 (;@5;)
              local.get 18
              i32.const -4
              i32.add
              local.tee 18
              local.get 11
              i32.store
            end
            block  ;; label = @5
              loop  ;; label = @6
                local.get 17
                local.tee 11
                local.get 18
                i32.le_u
                br_if 1 (;@5;)
                local.get 11
                i32.const -4
                i32.add
                local.tee 17
                i32.load
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 3
            i32.sub
            local.tee 3
            i32.store offset=44
            local.get 11
            local.set 17
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 14
          i32.const 25
          i32.add
          i32.const 9
          i32.div_s
          i32.const 1
          i32.add
          local.set 19
          local.get 13
          i32.const 102
          i32.eq
          local.set 20
          loop  ;; label = @4
            i32.const 9
            i32.const 0
            local.get 3
            i32.sub
            local.get 3
            i32.const -9
            i32.lt_s
            select
            local.set 10
            block  ;; label = @5
              block  ;; label = @6
                local.get 18
                local.get 11
                i32.lt_u
                br_if 0 (;@6;)
                local.get 18
                local.get 18
                i32.const 4
                i32.add
                local.get 18
                i32.load
                select
                local.set 18
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 10
              i32.shr_u
              local.set 21
              i32.const -1
              local.get 10
              i32.shl
              i32.const -1
              i32.xor
              local.set 22
              i32.const 0
              local.set 3
              local.get 18
              local.set 17
              loop  ;; label = @6
                local.get 17
                local.get 17
                i32.load
                local.tee 23
                local.get 10
                i32.shr_u
                local.get 3
                i32.add
                i32.store
                local.get 23
                local.get 22
                i32.and
                local.get 21
                i32.mul
                local.set 3
                local.get 17
                i32.const 4
                i32.add
                local.tee 17
                local.get 11
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 18
              local.get 18
              i32.const 4
              i32.add
              local.get 18
              i32.load
              select
              local.set 18
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 11
              local.get 3
              i32.store
              local.get 11
              i32.const 4
              i32.add
              local.set 11
            end
            local.get 6
            local.get 6
            i32.load offset=44
            local.get 10
            i32.add
            local.tee 3
            i32.store offset=44
            local.get 16
            local.get 18
            local.get 20
            select
            local.tee 17
            local.get 19
            i32.const 2
            i32.shl
            i32.add
            local.get 11
            local.get 11
            local.get 17
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 19
            i32.gt_s
            select
            local.set 11
            local.get 3
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 17
        block  ;; label = @3
          local.get 18
          local.get 11
          i32.ge_u
          br_if 0 (;@3;)
          local.get 16
          local.get 18
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 17
          i32.const 10
          local.set 3
          local.get 18
          i32.load
          local.tee 23
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 17
            i32.const 1
            i32.add
            local.set 17
            local.get 23
            local.get 3
            i32.const 10
            i32.mul
            local.tee 3
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 14
          i32.const 0
          local.get 17
          local.get 13
          i32.const 102
          i32.eq
          select
          i32.sub
          local.get 14
          i32.const 0
          i32.ne
          local.get 13
          i32.const 103
          i32.eq
          i32.and
          i32.sub
          local.tee 3
          local.get 11
          local.get 16
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          i32.const 9216
          i32.add
          local.tee 23
          i32.const 9
          i32.div_s
          local.tee 21
          i32.const 2
          i32.shl
          local.get 6
          i32.const 48
          i32.add
          i32.const 4
          i32.or
          local.get 6
          i32.const 340
          i32.add
          local.get 15
          i32.const 0
          i32.lt_s
          select
          i32.add
          i32.const -4096
          i32.add
          local.set 10
          i32.const 10
          local.set 3
          block  ;; label = @4
            local.get 23
            local.get 21
            i32.const 9
            i32.mul
            i32.sub
            local.tee 23
            i32.const 7
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 3
              i32.const 10
              i32.mul
              local.set 3
              local.get 23
              i32.const 1
              i32.add
              local.tee 23
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.load
          local.tee 21
          local.get 21
          local.get 3
          i32.div_u
          local.tee 22
          local.get 3
          i32.mul
          i32.sub
          local.set 23
          block  ;; label = @4
            block  ;; label = @5
              local.get 10
              i32.const 4
              i32.add
              local.tee 19
              local.get 11
              i32.ne
              br_if 0 (;@5;)
              local.get 23
              i32.eqz
              br_if 1 (;@4;)
            end
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 23
            local.get 3
            i32.const 1
            i32.shr_u
            local.tee 20
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 19
            local.get 11
            i32.eq
            select
            local.get 23
            local.get 20
            i32.lt_u
            select
            local.set 26
            f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
            f64.const 0x1p+53 (;=9.0072e+15;)
            local.get 22
            i32.const 1
            i32.and
            select
            local.set 1
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              local.get 9
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 26
              f64.neg
              local.set 26
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 10
            local.get 21
            local.get 23
            i32.sub
            local.tee 23
            i32.store
            local.get 1
            local.get 26
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 10
            local.get 23
            local.get 3
            i32.add
            local.tee 17
            i32.store
            block  ;; label = @5
              local.get 17
              i32.const 1000000000
              i32.lt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 10
                i32.const 0
                i32.store
                block  ;; label = @7
                  local.get 10
                  i32.const -4
                  i32.add
                  local.tee 10
                  local.get 18
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 18
                  i32.const -4
                  i32.add
                  local.tee 18
                  i32.const 0
                  i32.store
                end
                local.get 10
                local.get 10
                i32.load
                i32.const 1
                i32.add
                local.tee 17
                i32.store
                local.get 17
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 16
            local.get 18
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 17
            i32.const 10
            local.set 3
            local.get 18
            i32.load
            local.tee 23
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 17
              i32.const 1
              i32.add
              local.set 17
              local.get 23
              local.get 3
              i32.const 10
              i32.mul
              local.tee 3
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 10
          i32.const 4
          i32.add
          local.tee 3
          local.get 11
          local.get 11
          local.get 3
          i32.gt_u
          select
          local.set 11
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 11
            local.tee 3
            local.get 18
            i32.le_u
            local.tee 23
            br_if 1 (;@3;)
            local.get 3
            i32.const -4
            i32.add
            local.tee 11
            i32.load
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 13
            i32.const 103
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.and
            local.set 22
            br 1 (;@3;)
          end
          local.get 17
          i32.const -1
          i32.xor
          i32.const -1
          local.get 14
          i32.const 1
          local.get 14
          select
          local.tee 11
          local.get 17
          i32.gt_s
          local.get 17
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 10
          select
          local.get 11
          i32.add
          local.set 14
          i32.const -1
          i32.const -2
          local.get 10
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 22
          br_if 0 (;@3;)
          i32.const -9
          local.set 11
          block  ;; label = @4
            local.get 23
            br_if 0 (;@4;)
            local.get 3
            i32.const -4
            i32.add
            i32.load
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 23
            i32.const 0
            local.set 11
            local.get 10
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 11
              local.tee 21
              i32.const 1
              i32.add
              local.set 11
              local.get 10
              local.get 23
              i32.const 10
              i32.mul
              local.tee 23
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 21
            i32.const -1
            i32.xor
            local.set 11
          end
          local.get 3
          local.get 16
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 23
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 22
            local.get 14
            local.get 23
            local.get 11
            i32.add
            i32.const -9
            i32.add
            local.tee 11
            i32.const 0
            local.get 11
            i32.const 0
            i32.gt_s
            select
            local.tee 11
            local.get 14
            local.get 11
            i32.lt_s
            select
            local.set 14
            br 1 (;@3;)
          end
          i32.const 0
          local.set 22
          local.get 14
          local.get 17
          local.get 23
          i32.add
          local.get 11
          i32.add
          i32.const -9
          i32.add
          local.tee 11
          i32.const 0
          local.get 11
          i32.const 0
          i32.gt_s
          select
          local.tee 11
          local.get 14
          local.get 11
          i32.lt_s
          select
          local.set 14
        end
        local.get 14
        local.get 22
        i32.or
        local.tee 20
        i32.const 0
        i32.ne
        local.set 23
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            local.tee 21
            i32.const 70
            i32.ne
            br_if 0 (;@4;)
            local.get 17
            i32.const 0
            local.get 17
            i32.const 0
            i32.gt_s
            select
            local.set 11
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 12
            local.get 17
            local.get 17
            i32.const 31
            i32.shr_s
            local.tee 11
            i32.add
            local.get 11
            i32.xor
            i64.extend_i32_u
            local.get 12
            call 48
            local.tee 11
            i32.sub
            i32.const 1
            i32.gt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 11
              i32.const -1
              i32.add
              local.tee 11
              i32.const 48
              i32.store8
              local.get 12
              local.get 11
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 11
          i32.const -2
          i32.add
          local.tee 19
          local.get 5
          i32.store8
          local.get 11
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get 17
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 12
          local.get 19
          i32.sub
          local.set 11
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 8
        local.get 14
        i32.add
        local.get 23
        i32.add
        local.get 11
        i32.add
        i32.const 1
        i32.add
        local.tee 10
        local.get 4
        call 49
        local.get 0
        local.get 9
        local.get 8
        call 43
        local.get 0
        i32.const 48
        local.get 2
        local.get 10
        local.get 4
        i32.const 65536
        i32.xor
        call 49
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 21
                i32.const 70
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 21
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 17
                local.get 16
                local.get 18
                local.get 18
                local.get 16
                i32.gt_u
                select
                local.tee 23
                local.set 18
                loop  ;; label = @7
                  local.get 18
                  i64.load32_u
                  local.get 17
                  call 48
                  local.set 11
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      local.get 23
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 11
                        i32.const -1
                        i32.add
                        local.tee 11
                        i32.const 48
                        i32.store8
                        local.get 11
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                      unreachable
                    end
                    local.get 11
                    local.get 17
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 48
                    i32.store8 offset=24
                    local.get 21
                    local.set 11
                  end
                  local.get 0
                  local.get 11
                  local.get 17
                  local.get 11
                  i32.sub
                  call 43
                  local.get 18
                  i32.const 4
                  i32.add
                  local.tee 18
                  local.get 16
                  i32.le_u
                  br_if 0 (;@7;)
                end
                block  ;; label = @7
                  local.get 20
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4547
                  i32.const 1
                  call 43
                end
                local.get 18
                local.get 3
                i32.ge_u
                br_if 1 (;@5;)
                local.get 14
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 18
                    i64.load32_u
                    local.get 17
                    call 48
                    local.tee 11
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.le_u
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      local.get 11
                      i32.const -1
                      i32.add
                      local.tee 11
                      i32.const 48
                      i32.store8
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 11
                  local.get 14
                  i32.const 9
                  local.get 14
                  i32.const 9
                  i32.lt_s
                  select
                  call 43
                  local.get 14
                  i32.const -9
                  i32.add
                  local.set 11
                  local.get 18
                  i32.const 4
                  i32.add
                  local.tee 18
                  local.get 3
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 14
                  i32.const 9
                  i32.gt_s
                  local.set 23
                  local.get 11
                  local.set 14
                  local.get 23
                  br_if 0 (;@7;)
                  br 3 (;@4;)
                end
                unreachable
              end
              block  ;; label = @6
                local.get 14
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 3
                local.get 18
                i32.const 4
                i32.add
                local.get 3
                local.get 18
                i32.gt_u
                select
                local.set 21
                local.get 6
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 16
                local.get 6
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 3
                local.get 18
                local.set 17
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 17
                    i64.load32_u
                    local.get 3
                    call 48
                    local.tee 11
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 48
                    i32.store8 offset=24
                    local.get 16
                    local.set 11
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 17
                      local.get 18
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 11
                        i32.const -1
                        i32.add
                        local.tee 11
                        i32.const 48
                        i32.store8
                        local.get 11
                        local.get 6
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                      unreachable
                    end
                    local.get 0
                    local.get 11
                    i32.const 1
                    call 43
                    local.get 11
                    i32.const 1
                    i32.add
                    local.set 11
                    block  ;; label = @9
                      local.get 22
                      br_if 0 (;@9;)
                      local.get 14
                      i32.const 1
                      i32.lt_s
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    i32.const 4547
                    i32.const 1
                    call 43
                  end
                  local.get 0
                  local.get 11
                  local.get 3
                  local.get 11
                  i32.sub
                  local.tee 23
                  local.get 14
                  local.get 14
                  local.get 23
                  i32.gt_s
                  select
                  call 43
                  local.get 14
                  local.get 23
                  i32.sub
                  local.set 14
                  local.get 17
                  i32.const 4
                  i32.add
                  local.tee 17
                  local.get 21
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 14
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 14
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call 49
              local.get 0
              local.get 19
              local.get 12
              local.get 19
              i32.sub
              call 43
              br 2 (;@3;)
            end
            local.get 14
            local.set 11
          end
          local.get 0
          i32.const 48
          local.get 11
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 49
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 10
        local.get 4
        i32.const 8192
        i32.xor
        call 49
        br 1 (;@1;)
      end
      local.get 9
      i32.const 9
      i32.add
      local.get 9
      local.get 5
      i32.const 32
      i32.and
      local.tee 17
      select
      local.set 14
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.tee 11
        i32.eqz
        br_if 0 (;@2;)
        f64.const 0x1p+3 (;=8;)
        local.set 26
        loop  ;; label = @3
          local.get 26
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 26
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 14
          i32.load8_u
          i32.const 45
          i32.ne
          br_if 0 (;@3;)
          local.get 26
          local.get 1
          f64.neg
          local.get 26
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 26
        f64.add
        local.get 26
        f64.sub
        local.set 1
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=44
        local.tee 11
        local.get 11
        i32.const 31
        i32.shr_s
        local.tee 11
        i32.add
        local.get 11
        i32.xor
        i64.extend_i32_u
        local.get 12
        call 48
        local.tee 11
        local.get 12
        i32.ne
        br_if 0 (;@2;)
        local.get 6
        i32.const 48
        i32.store8 offset=15
        local.get 6
        i32.const 15
        i32.add
        local.set 11
      end
      local.get 8
      i32.const 2
      i32.or
      local.set 22
      local.get 6
      i32.load offset=44
      local.set 18
      local.get 11
      i32.const -2
      i32.add
      local.tee 21
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 11
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get 18
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 4
      i32.const 8
      i32.and
      local.set 23
      local.get 6
      i32.const 16
      i32.add
      local.set 18
      loop  ;; label = @2
        local.get 18
        local.set 11
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f64_s
            local.set 18
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 18
        end
        local.get 11
        local.get 18
        i32.const 4496
        i32.add
        i32.load8_u
        local.get 17
        i32.or
        i32.store8
        local.get 1
        local.get 18
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 11
          i32.const 1
          i32.add
          local.tee 18
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 23
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.eq
            br_if 1 (;@3;)
          end
          local.get 11
          i32.const 46
          i32.store8 offset=1
          local.get 11
          i32.const 2
          i32.add
          local.set 18
        end
        local.get 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 18
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          i32.const -2
          i32.add
          local.get 3
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          local.get 12
          i32.add
          local.get 21
          i32.sub
          i32.const 2
          i32.add
          local.set 11
          br 1 (;@2;)
        end
        local.get 12
        local.get 6
        i32.const 16
        i32.add
        i32.sub
        local.get 21
        i32.sub
        local.get 18
        i32.add
        local.set 11
      end
      local.get 0
      i32.const 32
      local.get 2
      local.get 11
      local.get 22
      i32.add
      local.tee 10
      local.get 4
      call 49
      local.get 0
      local.get 14
      local.get 22
      call 43
      local.get 0
      i32.const 48
      local.get 2
      local.get 10
      local.get 4
      i32.const 65536
      i32.xor
      call 49
      local.get 0
      local.get 6
      i32.const 16
      i32.add
      local.get 18
      local.get 6
      i32.const 16
      i32.add
      i32.sub
      local.tee 18
      call 43
      local.get 0
      i32.const 48
      local.get 11
      local.get 18
      local.get 12
      local.get 21
      i32.sub
      local.tee 17
      i32.add
      i32.sub
      i32.const 0
      i32.const 0
      call 49
      local.get 0
      local.get 21
      local.get 17
      call 43
      local.get 0
      i32.const 32
      local.get 2
      local.get 10
      local.get 4
      i32.const 8192
      i32.xor
      call 49
    end
    local.get 6
    i32.const 560
    i32.add
    global.set 0
    local.get 2
    local.get 10
    local.get 10
    local.get 2
    i32.lt_s
    select)
  (func (;52;) (type 9) (param i32 i32)
    (local i32)
    local.get 1
    local.get 1
    i32.load
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 2
    i32.const 16
    i32.add
    i32.store
    local.get 0
    local.get 2
    i64.load
    local.get 2
    i64.load offset=8
    call 32
    f64.store)
  (func (;53;) (type 23) (param f64) (result i64)
    local.get 0
    i64.reinterpret_f64)
  (func (;54;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 0
    i32.load offset=4000
    local.get 0
    local.get 1
    call 50
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;55;) (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    call 60
    local.set 2
    i32.const -1
    i32.const 0
    local.get 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call 40
    i32.ne
    select)
  (func (;56;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        local.set 3
        local.get 0
        call 37
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 4
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        local.get 0
        i32.load8_s offset=75
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const -1
      local.set 3
      local.get 0
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u offset=15
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;57;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=4000
      local.tee 2
      i32.load offset=76
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      call 58
      local.set 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 2
        call 55
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=20
        local.tee 0
        local.get 2
        i32.load offset=16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 0
        i32.const 10
        i32.store8
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 10
      call 56
      i32.const 31
      i32.shr_s
      local.set 0
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      call 59
    end
    local.get 0)
  (func (;58;) (type 1) (param i32) (result i32)
    i32.const 1)
  (func (;59;) (type 3) (param i32))
  (func (;60;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
        unreachable
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        local.get 3
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.sub
        return
      end
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=1
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.tee 1
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;61;) (type 2) (result i32)
    global.get 0)
  (func (;62;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;63;) (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;64;) (type 1) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=76
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          call 65
          return
        end
        local.get 0
        call 58
        local.set 1
        local.get 0
        call 65
        local.set 2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        call 59
        local.get 2
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        i32.const 0
        i32.load offset=4696
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=4696
        call 64
        local.set 2
      end
      block  ;; label = @2
        call 35
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 0
            i32.load offset=76
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            call 58
            local.set 1
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            i32.le_u
            br_if 0 (;@4;)
            local.get 0
            call 65
            local.get 2
            i32.or
            local.set 2
          end
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 59
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 36
    end
    local.get 2)
  (func (;65;) (type 1) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=36
      call_indirect (type 0)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 7)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func (;66;) (type 22) (param i32 i32 i64 i32) (result i64)
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    call_indirect (type 7))
  (func (;67;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 0
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    call 66
    local.set 5
    local.get 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call 2
    local.get 5
    i32.wrap_i64)
  (table (;0;) 7 7 funcref)
  (global (;0;) (mut i32) (i32.const 5248960))
  (global (;1;) i32 (i32.const 6068))
  (export "__indirect_function_table" (table 0))
  (export "__wasm_call_ctors" (func 3))
  (export "main" (func 9))
  (export "__errno_location" (func 18))
  (export "fflush" (func 64))
  (export "stackSave" (func 61))
  (export "stackRestore" (func 62))
  (export "stackAlloc" (func 63))
  (export "__data_end" (global 1))
  (export "dynCall_jiji" (func 67))
  (elem (;0;) (i32.const 1) func 4 21 20 22 51 52)
  (data (;0;) (i32.const 1024) "Coefficients:\00 %lg\00\0a\0aApproximation:\0a   x           func(x)     approx      diff\00% 10.8lf % 10.8lf % 10.8lf % 4.1le\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\83\f9\a2\00DNn\00\fc)\15\00\d1W'\00\dd4\f5\00b\db\c0\00<\99\95\00A\90C\00cQ\fe\00\bb\de\ab\00\b7a\c5\00:n$\00\d2MB\00I\06\e0\00\09\ea.\00\1c\92\d1\00\eb\1d\fe\00)\b1\1c\00\e8>\a7\00\f55\82\00D\bb.\00\9c\e9\84\00\b4&p\00A~_\00\d6\919\00S\839\00\9c\f49\00\8b_\84\00(\f9\bd\00\f8\1f;\00\de\ff\97\00\0f\98\05\00\11/\ef\00\0aZ\8b\00m\1fm\00\cf~6\00\09\cb'\00FO\b7\00\9ef?\00-\ea_\00\ba'u\00\e5\eb\c7\00={\f1\00\f79\07\00\92R\8a\00\fbk\ea\00\1f\b1_\00\08]\8d\000\03V\00{\fcF\00\f0\abk\00 \bc\cf\006\f4\9a\00\e3\a9\1d\00^a\91\00\08\1b\e6\00\85\99e\00\a0\14_\00\8d@h\00\80\d8\ff\00'sM\00\06\061\00\caV\15\00\c9\a8s\00{\e2`\00k\8c\c0\00\19\c4G\00\cdg\c3\00\09\e8\dc\00Y\83*\00\8bv\c4\00\a6\1c\96\00D\af\dd\00\19W\d1\00\a5>\05\00\05\07\ff\003~?\00\c22\e8\00\98O\de\00\bb}2\00&=\c3\00\1ek\ef\00\9f\f8^\005\1f:\00\7f\f2\ca\00\f1\87\1d\00|\90!\00j$|\00\d5n\fa\000-w\00\15;C\00\b5\14\c6\00\c3\19\9d\00\ad\c4\c2\00,MA\00\0c\00]\00\86}F\00\e3q-\00\9b\c6\9a\003b\00\00\b4\d2|\00\b4\a7\97\007U\d5\00\d7>\f6\00\a3\10\18\00Mv\fc\00d\9d*\00p\d7\ab\00c|\f8\00z\b0W\00\17\15\e7\00\c0IV\00;\d6\d9\00\a7\848\00$#\cb\00\d6\8aw\00ZT#\00\00\1f\b9\00\f1\0a\1b\00\19\ce\df\00\9f1\ff\00f\1ej\00\99Wa\00\ac\fbG\00~\7f\d8\00\22e\b7\002\e8\89\00\e6\bf`\00\ef\c4\cd\00l6\09\00]?\d4\00\16\de\d7\00X;\de\00\de\9b\92\00\d2\22(\00(\86\e8\00\e2XM\00\c6\ca2\00\08\e3\16\00\e0}\cb\00\17\c0P\00\f3\1d\a7\00\18\e0[\00.\134\00\83\12b\00\83H\01\00\f5\8e[\00\ad\b0\7f\00\1e\e9\f2\00HJC\00\10g\d3\00\aa\dd\d8\00\ae_B\00ja\ce\00\0a(\a4\00\d3\99\b4\00\06\a6\f2\00\5cw\7f\00\a3\c2\83\00a<\88\00\8asx\00\af\8cZ\00o\d7\bd\00-\a6c\00\f4\bf\cb\00\8d\81\ef\00&\c1g\00U\caE\00\ca\d96\00(\a8\d2\00\c2a\8d\00\12\c9w\00\04&\14\00\12F\9b\00\c4Y\c4\00\c8\c5D\00M\b2\91\00\00\17\f3\00\d4C\ad\00)I\e5\00\fd\d5\10\00\00\be\fc\00\1e\94\cc\00p\ce\ee\00\13>\f5\00\ec\f1\80\00\b3\e7\c3\00\c7\f8(\00\93\05\94\00\c1q>\00.\09\b3\00\0bE\f3\00\88\12\9c\00\ab {\00.\b5\9f\00G\92\c2\00{2/\00\0cUm\00r\a7\90\00k\e7\1f\001\cb\96\00y\16J\00Ay\e2\00\f4\df\89\00\e8\94\97\00\e2\e6\84\00\991\97\00\88\edk\00__6\00\bb\fd\0e\00H\9a\b4\00g\a4l\00qrB\00\8d]2\00\9f\15\b8\00\bc\e5\09\00\8d1%\00\f7t9\000\05\1c\00\0d\0c\01\00K\08h\00,\eeX\00G\aa\90\00t\e7\02\00\bd\d6$\00\f7}\a6\00nHr\00\9f\16\ef\00\8e\94\a6\00\b4\91\f6\00\d1SQ\00\cf\0a\f2\00 \983\00\f5K~\00\b2ch\00\dd>_\00@]\03\00\85\89\7f\00UR)\007d\c0\00m\d8\10\002H2\00[Lu\00Nq\d4\00ETn\00\0b\09\c1\00*\f5i\00\14f\d5\00'\07\9d\00]\04P\00\b4;\db\00\eav\c5\00\87\f9\17\00Ik}\00\1d'\ba\00\96i)\00\c6\cc\ac\00\ad\14T\00\90\e2j\00\88\d9\89\00,rP\00\04\a4\be\00w\07\94\00\f30p\00\00\fc'\00\eaq\a8\00f\c2I\00d\e0=\00\97\dd\83\00\a3?\97\00C\94\fd\00\0d\86\8c\001A\de\00\929\9d\00\ddp\8c\00\17\b7\e7\00\08\df;\00\157+\00\5c\80\a0\00Z\80\93\00\10\11\92\00\0f\e8\d8\00l\80\af\00\db\ffK\008\90\0f\00Y\18v\00b\a5\15\00a\cb\bb\00\c7\89\b9\00\10@\bd\00\d2\f2\04\00Iu'\00\eb\b6\f6\00\db\22\bb\00\0a\14\aa\00\89&/\00d\83v\00\09;3\00\0e\94\1a\00Q:\aa\00\1d\a3\c2\00\af\ed\ae\00\5c&\12\00m\c2M\00-z\9c\00\c0V\97\00\03?\83\00\09\f0\f6\00+@\8c\00m1\99\009\b4\07\00\0c \15\00\d8\c3[\00\f5\92\c4\00\c6\adK\00N\ca\a5\00\a77\cd\00\e6\a96\00\ab\92\94\00\ddBh\00\19c\de\00v\8c\ef\00h\8bR\00\fc\db7\00\ae\a1\ab\00\df\151\00\00\ae\a1\00\0c\fb\da\00dMf\00\ed\05\b7\00)e0\00WV\bf\00G\ff:\00j\f9\b9\00u\be\f3\00(\93\df\00\ab\800\00f\8c\f6\00\04\cb\15\00\fa\22\06\00\d9\e4\1d\00=\b3\a4\00W\1b\8f\006\cd\09\00NB\e9\00\13\be\a4\003#\b5\00\f0\aa\1a\00Oe\a8\00\d2\c1\a5\00\0b?\0f\00[x\cd\00#\f9v\00{\8b\04\00\89\17r\00\c6\a6S\00on\e2\00\ef\eb\00\00\9bJX\00\c4\da\b7\00\aaf\ba\00v\cf\cf\00\d1\02\1d\00\b1\f1-\00\8c\99\c1\00\c3\adw\00\86H\da\00\f7]\a0\00\c6\80\f4\00\ac\f0/\00\dd\ec\9a\00?\5c\bc\00\d0\dem\00\90\c7\1f\00*\db\b6\00\a3%:\00\00\af\9a\00\adS\93\00\b6W\04\00)-\b4\00K\80~\00\da\07\a7\00v\aa\0e\00{Y\a1\00\16\12*\00\dc\b7-\00\fa\e5\fd\00\89\db\fe\00\89\be\fd\00\e4vl\00\06\a9\fc\00>\80p\00\85n\15\00\fd\87\ff\00(>\07\00ag3\00*\18\86\00M\bd\ea\00\b3\e7\af\00\8fmn\00\95g9\001\bf[\00\84\d7H\000\df\16\00\c7-C\00%a5\00\c9p\ce\000\cb\b8\00\bfl\fd\00\a4\00\a2\00\05l\e4\00Z\dd\a0\00!oG\00b\12\d2\00\b9\5c\84\00paI\00kV\e0\00\99R\01\00PU7\00\1e\d5\b7\003\f1\c4\00\13n_\00]0\e4\00\85.\a9\00\1d\b2\c3\00\a126\00\08\b7\a4\00\ea\b1\d4\00\16\f7!\00\8fi\e4\00'\ffw\00\0c\03\80\00\8d@-\00O\cd\a0\00 \a5\99\00\b3\a2\d3\00/]\0a\00\b4\f9B\00\11\da\cb\00}\be\d0\00\9b\db\c1\00\ab\17\bd\00\ca\a2\81\00\08j\5c\00.U\17\00'\00U\00\7f\14\f0\00\e1\07\86\00\14\0bd\00\96A\8d\00\87\be\de\00\da\fd*\00k%\b6\00{\894\00\05\f3\fe\00\b9\bf\9e\00hjO\00J*\a8\00O\c4Z\00-\f8\bc\00\d7Z\98\00\f4\c7\95\00\0dM\8d\00 :\a6\00\a4W_\00\14?\b1\00\808\95\00\cc \01\00q\dd\86\00\c9\de\b6\00\bf`\f5\00Me\11\00\01\07k\00\8c\b0\ac\00\b2\c0\d0\00QUH\00\1e\fb\0e\00\95r\c3\00\a3\06;\00\c0@5\00\06\dc{\00\e0E\cc\00N)\fa\00\d6\ca\c8\00\e8\f3A\00|d\de\00\9bd\d8\00\d9\be1\00\a4\97\c3\00wX\d4\00i\e3\c5\00\f0\da\13\00\ba:<\00F\18F\00Uu_\00\d2\bd\f5\00n\92\c6\00\ac.]\00\0eD\ed\00\1c>B\00a\c4\87\00)\fd\e9\00\e7\d6\f3\00\22|\ca\00o\915\00\08\e0\c5\00\ff\d7\8d\00nj\e2\00\b0\fd\c6\00\93\08\c1\00|]t\00k\ad\b2\00\cdn\9d\00>r{\00\c6\11j\00\f7\cf\a9\00)s\df\00\b5\c9\ba\00\b7\00Q\00\e2\b2\0d\00t\ba$\00\e5}`\00t\d8\8a\00\0d\15,\00\81\18\0c\00~f\94\00\01)\16\00\9fzv\00\fd\fd\be\00VE\ef\00\d9~6\00\ec\d9\13\00\8b\ba\b9\00\c4\97\fc\001\a8'\00\f1n\c3\00\94\c56\00\d8\a8V\00\b4\a8\b5\00\cf\cc\0e\00\12\89-\00oW4\00,V\89\00\99\ce\e3\00\d6 \b9\00k^\aa\00>*\9c\00\11_\cc\00\fd\0bJ\00\e1\f4\fb\00\8e;m\00\e2\86,\00\e9\d4\84\00\fc\b4\a9\00\ef\ee\d1\00.5\c9\00/9a\008!D\00\1b\d9\c8\00\81\fc\0a\00\fbJj\00/\1c\d8\00S\b4\84\00N\99\8c\00T\22\cc\00*U\dc\00\c0\c6\d6\00\0b\19\96\00\1ap\b8\00i\95d\00&Z`\00?R\ee\00\7f\11\0f\00\f4\b5\11\00\fc\cb\f5\004\bc-\004\bc\ee\00\e8]\cc\00\dd^`\00g\8e\9b\00\923\ef\00\c9\17\b8\00aX\9b\00\e1W\bc\00Q\83\c6\00\d8>\10\00\ddqH\00-\1c\dd\00\af\18\a1\00!,F\00Y\f3\d7\00\d9z\98\00\9eT\c0\00O\86\fa\00V\06\fc\00\e5y\ae\00\89\226\008\ad\22\00g\93\dc\00U\e8\aa\00\82&8\00\ca\e7\9b\00Q\0d\a4\00\993\b1\00\a9\d7\0e\00i\05H\00e\b2\f0\00\7f\88\a7\00\88L\97\00\f9\d16\00!\92\b3\00{\82J\00\98\cf!\00@\9f\dc\00\dcGU\00\e1t:\00g\ebB\00\fe\9d\df\00^\d4_\00{g\a4\00\ba\acz\00U\f6\a2\00+\88#\00A\baU\00Yn\08\00!*\86\009G\83\00\89\e3\e6\00\e5\9e\d4\00I\fb@\00\ffV\e9\00\1c\0f\ca\00\c5Y\8a\00\94\fa+\00\d3\c1\c5\00\0f\c5\cf\00\dbZ\ae\00G\c5\86\00\85Cb\00!\86;\00,y\94\00\10a\87\00*L{\00\80,\1a\00C\bf\12\00\88&\90\00x<\89\00\a8\c4\e4\00\e5\db{\00\c4:\c2\00&\f4\ea\00\f7g\8a\00\0d\92\bf\00e\a3+\00=\93\b1\00\bd|\0b\00\a4Q\dc\00'\ddc\00i\e1\dd\00\9a\94\19\00\a8)\95\00h\ce(\00\09\ed\b4\00D\9f \00N\98\ca\00p\82c\00~|#\00\0f\b92\00\a7\f5\8e\00\14V\e7\00!\f1\08\00\b5\9d*\00o~M\00\a5\19Q\00\b5\f9\ab\00\82\df\d6\00\96\dda\00\166\02\00\c4:\9f\00\83\a2\a1\00r\edm\009\8dz\00\82\b8\a9\00k2\5c\00F'[\00\004\ed\00\d2\00w\00\fc\f4U\00\01YM\00\e0q\80\00\00\00\00\00\00\00\00\00\00\00\00@\fb!\f9?\00\00\00\00-Dt>\00\00\00\80\98F\f8<\00\00\00`Q\ccx;\00\00\00\80\83\1b\f09\00\00\00@ %z8\00\00\00\80\22\82\e36\00\00\00\00\1d\f3i5\c8\11\00\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\00\00\00\00\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\00\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00")
  (data (;1;) (i32.const 4552) "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00h\13\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0a\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c8\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\90\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;2;) (i32.const 4944) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
