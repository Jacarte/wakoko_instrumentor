(module
  (type $t0 (func (param i32)))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func))
  (type $t4 (func (param i32 i32 i32) (result i32)))
  (type $t5 (func (param i32 i64 i32) (result i64)))
  (import "env" "memory" (memory $env.memory 256 256))
  (func $__wasm_call_ctors (type $t3))
  (func $stackSave (type $t2) (result i32)
    global.get $g0)
  (func $stackRestore (type $t0) (param $p0 i32)
    local.get $p0
    global.set $g0)
  (func $stackAlloc (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    local.get $p0
    i32.sub
    i32.const -16
    i32.and
    local.tee $l1
    global.set $g0
    local.get $l1)
  (func $f4 (type $t1) (param $p0 i32) (result i32)
    i32.const 1)
  (func $f5 (type $t0) (param $p0 i32))
  (func $f6 (type $t0) (param $p0 i32))
  (func $f7 (type $t0) (param $p0 i32))
  (func $f8 (type $t2) (result i32)
    i32.const 1024
    call $f6
    i32.const 1032)
  (func $f9 (type $t3)
    i32.const 1024
    call $f7)
  (func $fflush (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      block $B1
        local.get $p0
        i32.eqz
        br_if $B1
        block $B2
          local.get $p0
          i32.load offset=76
          i32.const -1
          i32.gt_s
          br_if $B2
          local.get $p0
          call $f11
          return
        end
        local.get $p0
        call $f4
        local.set $l1
        local.get $p0
        call $f11
        local.set $l2
        local.get $l1
        i32.eqz
        br_if $B0
        local.get $p0
        call $f5
        local.get $l2
        return
      end
      i32.const 0
      local.set $l2
      block $B3
        i32.const 0
        i32.load offset=1036
        i32.eqz
        br_if $B3
        i32.const 0
        i32.load offset=1036
        call $fflush
        local.set $l2
      end
      block $B4
        call $f8
        i32.load
        local.tee $p0
        i32.eqz
        br_if $B4
        loop $L5
          i32.const 0
          local.set $l1
          block $B6
            local.get $p0
            i32.load offset=76
            i32.const 0
            i32.lt_s
            br_if $B6
            local.get $p0
            call $f4
            local.set $l1
          end
          block $B7
            local.get $p0
            i32.load offset=20
            local.get $p0
            i32.load offset=28
            i32.le_u
            br_if $B7
            local.get $p0
            call $f11
            local.get $l2
            i32.or
            local.set $l2
          end
          block $B8
            local.get $l1
            i32.eqz
            br_if $B8
            local.get $p0
            call $f5
          end
          local.get $p0
          i32.load offset=56
          local.tee $p0
          br_if $L5
        end
      end
      call $f9
    end
    local.get $l2)
  (func $f11 (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.load offset=20
      local.get $p0
      i32.load offset=28
      i32.le_u
      br_if $B0
      local.get $p0
      i32.const 0
      i32.const 0
      local.get $p0
      i32.load offset=36
      call_indirect $__indirect_function_table (type $t4)
      drop
      local.get $p0
      i32.load offset=20
      br_if $B0
      i32.const -1
      return
    end
    block $B1
      local.get $p0
      i32.load offset=4
      local.tee $l1
      local.get $p0
      i32.load offset=8
      local.tee $l2
      i32.ge_u
      br_if $B1
      local.get $p0
      local.get $l1
      local.get $l2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get $p0
      i32.load offset=40
      call_indirect $__indirect_function_table (type $t5)
      drop
    end
    local.get $p0
    i32.const 0
    i32.store offset=28
    local.get $p0
    i64.const 0
    i64.store offset=16
    local.get $p0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func $__errno_location (type $t2) (result i32)
    i32.const 1040)
  (table $__indirect_function_table 1 1 funcref)
  (global $g0 (mut i32) (i32.const 5243936))
  (global $__data_end i32 (i32.const 1044))
  (export "__indirect_function_table" (table 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__errno_location" (func $__errno_location))
  (export "fflush" (func $fflush))
  (export "stackSave" (func $stackSave))
  (export "stackRestore" (func $stackRestore))
  (export "stackAlloc" (func $stackAlloc))
  (export "__data_end" (global 1))
  (data $d0 (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
