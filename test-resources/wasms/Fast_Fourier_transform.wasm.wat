(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i32) (result i64)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 f64) (result f64)))
  (type (;11;) (func (param i32) (result f64)))
  (type (;12;) (func (param f64) (result f64)))
  (type (;13;) (func (param f64 f64 i32) (result f64)))
  (type (;14;) (func (param f64 i32) (result f64)))
  (type (;15;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param f64 i32) (result i32)))
  (type (;17;) (func (param f64 f64) (result f64)))
  (type (;18;) (func (param i32 i32 i32)))
  (type (;19;) (func (param i32 f64 f64 f64 f64)))
  (type (;20;) (func (param f32 f32) (result f32)))
  (type (;21;) (func (param i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__wasi_proc_exit (type 2)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $__wasi_args_sizes_get (type 3)))
  (import "wasi_snapshot_preview1" "args_get" (func $__wasi_args_get (type 3)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__wasi_fd_close (type 4)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__wasi_fd_write (type 5)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__wasi_fd_fdstat_get (type 3)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__wasi_fd_seek (type 6)))
  (func $__wasm_call_ctors (type 7))
  (func $_start (type 7)
    (local i32)
    call $__wasm_call_ctors
    call $__original_main
    local.set 0
    call $__prepare_for_exit
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $__wasi_proc_exit
      unreachable
    end)
  (func $abort (type 7)
    unreachable
    unreachable)
  (func $sbrk (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1024
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $malloc (type 4) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
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
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1028
                              local.tee 2
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 3
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 0
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 5
                              i32.const 3
                              i32.shl
                              local.tee 6
                              i32.const 1076
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 0
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 3
                                  local.get 6
                                  i32.const 1068
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1028
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1044
                                local.get 3
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 3
                            i32.const 0
                            i32.load offset=1036
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 0
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 0
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 5
                                  local.get 0
                                  i32.or
                                  local.get 4
                                  local.get 5
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 6
                                  i32.const 1076
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 6
                                  i32.const 1068
                                  i32.add
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  local.tee 2
                                  i32.store offset=1028
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=1044
                                local.get 0
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 0
                                i32.store offset=8
                                local.get 0
                                local.get 6
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.add
                              local.get 5
                              local.get 3
                              i32.sub
                              local.tee 5
                              i32.store
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 6
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 1068
                                i32.add
                                local.set 3
                                i32.const 0
                                i32.load offset=1048
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 2
                                    local.get 8
                                    i32.or
                                    i32.store offset=1028
                                    local.get 3
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 3
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 3
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 3
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 6
                              i32.store offset=1048
                              i32.const 0
                              local.get 5
                              i32.store offset=1036
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=1032
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 0
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 5
                            local.get 0
                            i32.or
                            local.get 4
                            local.get 5
                            i32.shr_u
                            local.tee 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1332
                            i32.add
                            i32.load
                            local.tee 6
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 3
                            i32.sub
                            local.set 4
                            local.get 6
                            local.set 5
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 0
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 5
                                local.get 4
                                i32.lt_u
                                local.tee 5
                                select
                                local.set 4
                                local.get 0
                                local.get 6
                                local.get 5
                                select
                                local.set 6
                                local.get 0
                                local.set 5
                                br 0 (;@14;)
                              end
                            end
                            local.get 6
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 8
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1044
                                local.get 6
                                i32.load offset=8
                                local.tee 0
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 0
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 8
                              local.get 0
                              i32.store offset=8
                              local.get 0
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 11
                              local.get 0
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 8
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 3
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 0
                          i32.const -16
                          i32.and
                          local.set 3
                          i32.const 0
                          i32.load offset=1032
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 0
                            i32.const 8
                            i32.shr_u
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 3
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 0
                            i32.shl
                            local.tee 5
                            local.get 5
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 0
                            local.get 4
                            i32.or
                            local.get 5
                            i32.or
                            i32.sub
                            local.tee 0
                            i32.const 1
                            i32.shl
                            local.get 3
                            local.get 0
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 3
                          i32.sub
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 11
                              i32.const 2
                              i32.shl
                              i32.const 1332
                              i32.add
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              i32.const 0
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 3
                            i32.const 0
                            i32.const 25
                            local.get 11
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            local.get 11
                            i32.const 31
                            i32.eq
                            select
                            i32.shl
                            local.set 6
                            i32.const 0
                            local.set 2
                            i32.const 0
                            local.set 8
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 5
                                local.get 4
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 5
                                local.set 4
                                local.get 0
                                local.set 8
                                local.get 5
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 4
                                local.get 0
                                local.set 8
                                br 2 (;@12;)
                              end
                              local.get 0
                              local.get 6
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.const 16
                              i32.add
                              i32.load
                              local.tee 5
                              local.get 2
                              local.get 0
                              i32.const 20
                              i32.add
                              i32.load
                              local.tee 0
                              local.get 0
                              local.get 5
                              i32.eq
                              select
                              local.get 2
                              local.get 0
                              select
                              local.tee 2
                              local.get 5
                              select
                              local.set 0
                              local.get 6
                              local.get 5
                              i32.const 0
                              i32.ne
                              i32.shl
                              local.set 6
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 0
                            local.get 8
                            i32.or
                            br_if 0 (;@12;)
                            i32.const 2
                            local.get 11
                            i32.shl
                            local.tee 0
                            i32.const 0
                            local.get 0
                            i32.sub
                            i32.or
                            local.get 7
                            i32.and
                            local.tee 0
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 0
                            i32.const 0
                            local.get 0
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 0
                            i32.shr_u
                            local.tee 5
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 6
                            local.get 0
                            i32.or
                            local.get 5
                            local.get 6
                            i32.shr_u
                            local.tee 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 5
                            i32.or
                            local.get 0
                            local.get 5
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.or
                            local.get 0
                            local.get 5
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 5
                            i32.or
                            local.get 0
                            local.get 5
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 1332
                            i32.add
                            i32.load
                            local.set 0
                          end
                          block  ;; label = @12
                            local.get 0
                            i32.eqz
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.sub
                              local.tee 2
                              local.get 4
                              i32.lt_u
                              local.set 6
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=16
                                local.tee 5
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 5
                              end
                              local.get 2
                              local.get 4
                              local.get 6
                              select
                              local.set 4
                              local.get 0
                              local.get 8
                              local.get 6
                              select
                              local.set 8
                              local.get 5
                              local.set 0
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 0
                          i32.load offset=1036
                          local.get 3
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 6
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1044
                              local.get 8
                              i32.load offset=8
                              local.tee 0
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=12
                              local.get 8
                              i32.ne
                              drop
                            end
                            local.get 6
                            local.get 0
                            i32.store offset=8
                            local.get 0
                            local.get 6
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 5
                          end
                          loop  ;; label = @12
                            local.get 5
                            local.set 2
                            local.get 0
                            local.tee 6
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 6
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 2
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1036
                          local.tee 0
                          local.get 3
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1048
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              local.get 3
                              i32.sub
                              local.tee 5
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 6
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 5
                              i32.store offset=1036
                              i32.const 0
                              local.get 6
                              i32.store offset=1048
                              local.get 4
                              local.get 0
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 0
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=1048
                            i32.const 0
                            i32.const 0
                            i32.store offset=1036
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1040
                          local.tee 6
                          local.get 3
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1052
                          local.tee 0
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 6
                          local.get 3
                          i32.sub
                          local.tee 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 5
                          i32.store offset=1040
                          i32.const 0
                          local.get 4
                          i32.store offset=1052
                          local.get 0
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1500
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1508
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=1512 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=1504 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=1500
                          i32.const 0
                          i32.const 0
                          i32.store offset=1520
                          i32.const 0
                          i32.const 0
                          i32.store offset=1472
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 0
                        block  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 2
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 3
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=1024
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1468
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1460
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 0
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 0
                          i32.const 0
                          i32.const 48
                          i32.store offset=1024
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=1472
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1052
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1476
                              local.set 0
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 6
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 2
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1504
                              local.tee 0
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 6
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 6
                              i32.sub
                              local.get 4
                              local.get 6
                              i32.add
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              i32.add
                              local.set 2
                            end
                            local.get 2
                            local.get 3
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 2
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1468
                              local.tee 0
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1460
                              local.tee 4
                              local.get 2
                              i32.add
                              local.tee 5
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 0
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 2
                            call $sbrk
                            local.tee 0
                            local.get 6
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 2
                          local.get 6
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 2
                          call $sbrk
                          local.tee 6
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 6
                          local.set 0
                        end
                        local.get 0
                        local.set 6
                        block  ;; label = @11
                          local.get 3
                          i32.const 72
                          i32.add
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 2
                          i32.sub
                          i32.const 0
                          i32.load offset=1508
                          local.tee 0
                          i32.add
                          i32.const 0
                          local.get 0
                          i32.sub
                          i32.and
                          local.tee 0
                          i32.const 2147483646
                          i32.gt_u
                          br_if 6 (;@5;)
                          block  ;; label = @12
                            local.get 0
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 2
                            i32.add
                            local.set 2
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 6
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 6
                    br 5 (;@3;)
                  end
                  local.get 6
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1472
                i32.const 4
                i32.or
                i32.store offset=1472
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.tee 6
              i32.const 0
              call $sbrk
              local.tee 0
              i32.ge_u
              br_if 1 (;@4;)
              local.get 6
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 6
              i32.sub
              local.tee 2
              local.get 3
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1460
            local.get 2
            i32.add
            local.tee 0
            i32.store offset=1460
            block  ;; label = @5
              local.get 0
              i32.const 0
              i32.load offset=1464
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 0
              i32.store offset=1464
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1052
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1476
                    local.set 0
                    loop  ;; label = @9
                      local.get 6
                      local.get 0
                      i32.load
                      local.tee 5
                      local.get 0
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1044
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 0
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 6
                    i32.store offset=1044
                  end
                  i32.const 0
                  local.set 0
                  i32.const 0
                  local.get 2
                  i32.store offset=1480
                  i32.const 0
                  local.get 6
                  i32.store offset=1476
                  i32.const 0
                  i32.const -1
                  i32.store offset=1060
                  i32.const 0
                  i32.const 0
                  i32.load offset=1500
                  i32.store offset=1064
                  i32.const 0
                  i32.const 0
                  i32.store offset=1488
                  loop  ;; label = @8
                    local.get 0
                    i32.const 1076
                    i32.add
                    local.get 0
                    i32.const 1068
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 0
                    i32.const 1080
                    i32.add
                    local.get 4
                    i32.store
                    local.get 0
                    i32.const 8
                    i32.add
                    local.tee 0
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const -8
                  local.get 6
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 0
                  i32.add
                  local.tee 4
                  local.get 2
                  i32.const -56
                  i32.add
                  local.tee 5
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1516
                  i32.store offset=1056
                  i32.const 0
                  local.get 0
                  i32.store offset=1040
                  i32.const 0
                  local.get 4
                  i32.store offset=1052
                  local.get 6
                  local.get 5
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 6
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 5
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 5
                i32.add
                local.tee 6
                i32.const 0
                i32.load offset=1040
                local.get 2
                i32.add
                local.tee 11
                local.get 5
                i32.sub
                local.tee 5
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 8
                local.get 2
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1516
                i32.store offset=1056
                i32.const 0
                local.get 5
                i32.store offset=1040
                i32.const 0
                local.get 6
                i32.store offset=1052
                local.get 4
                local.get 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 6
                i32.const 0
                i32.load offset=1044
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                i32.store offset=1044
                local.get 6
                local.set 8
              end
              local.get 6
              local.get 2
              i32.add
              local.set 5
              i32.const 1476
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 1476
                        local.set 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 8
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                      end
                      local.get 0
                      local.get 6
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 2
                      i32.add
                      i32.store offset=4
                      local.get 6
                      i32.const -8
                      local.get 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 11
                      i32.sub
                      local.get 3
                      i32.sub
                      local.set 0
                      local.get 11
                      local.get 3
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=1052
                        i32.const 0
                        i32.const 0
                        i32.load offset=1040
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=1040
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1048
                        local.get 6
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 3
                        i32.store offset=1048
                        i32.const 0
                        i32.const 0
                        i32.load offset=1036
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=1036
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=12
                            local.set 5
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=8
                              local.tee 2
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 1068
                              i32.add
                              local.tee 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 2
                              i32.gt_u
                              drop
                            end
                            block  ;; label = @13
                              local.get 5
                              local.get 2
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1028
                              i32.const -2
                              local.get 9
                              i32.rotl
                              i32.and
                              i32.store offset=1028
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 5
                              local.get 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 5
                              i32.gt_u
                              drop
                            end
                            local.get 5
                            local.get 2
                            i32.store offset=8
                            local.get 2
                            local.get 5
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 2
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 8
                                local.get 6
                                i32.load offset=8
                                local.tee 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=12
                                local.get 6
                                i32.ne
                                drop
                              end
                              local.get 2
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 2
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 2
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 5
                              local.tee 2
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 2
                              i32.load offset=16
                              local.tee 5
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=28
                              local.tee 5
                              i32.const 2
                              i32.shl
                              i32.const 1332
                              i32.add
                              local.tee 4
                              i32.load
                              local.get 6
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.store
                              local.get 2
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=1032
                              i32.const -2
                              local.get 5
                              i32.rotl
                              i32.and
                              i32.store offset=1032
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 2
                            i32.store
                            local.get 2
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 2
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 2
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 2
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 0
                        i32.add
                        local.set 0
                        local.get 6
                        local.get 7
                        i32.add
                        local.set 6
                      end
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 3
                      local.get 0
                      i32.add
                      local.get 0
                      i32.store
                      local.get 3
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 1068
                        i32.add
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1028
                            local.tee 5
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 4
                            i32.or
                            i32.store offset=1028
                            local.get 0
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 4
                        local.get 3
                        i32.store offset=12
                        local.get 0
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 0
                        i32.store offset=12
                        local.get 3
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 4
                        local.get 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 5
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 5
                        local.get 5
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 5
                        i32.shl
                        local.tee 6
                        local.get 6
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 6
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 5
                        local.get 4
                        i32.or
                        local.get 6
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 0
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 3
                      local.get 4
                      i32.store offset=28
                      local.get 3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1332
                      i32.add
                      local.set 5
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1032
                        local.tee 6
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 3
                        i32.store
                        i32.const 0
                        local.get 6
                        local.get 8
                        i32.or
                        i32.store offset=1032
                        local.get 3
                        local.get 5
                        i32.store offset=24
                        local.get 3
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 3
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 0
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 5
                      i32.load
                      local.set 6
                      loop  ;; label = @10
                        local.get 6
                        local.tee 5
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 0
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 6
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 5
                        local.get 6
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 6
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 5
                      i32.store offset=24
                      local.get 3
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 3
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 6
                    i32.const -8
                    local.get 6
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 0
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.const -56
                    i32.add
                    local.tee 11
                    local.get 0
                    i32.sub
                    local.tee 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 6
                    local.get 11
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 4
                    local.get 8
                    i32.const 55
                    local.get 8
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 8
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 11
                    local.get 11
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 11
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1516
                    i32.store offset=1056
                    i32.const 0
                    local.get 0
                    i32.store offset=1040
                    i32.const 0
                    local.get 5
                    i32.store offset=1052
                    local.get 11
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=1484 align=4
                    i64.store align=4
                    local.get 11
                    i32.const 0
                    i64.load offset=1476 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 11
                    i32.const 8
                    i32.add
                    i32.store offset=1484
                    i32.const 0
                    local.get 2
                    i32.store offset=1480
                    i32.const 0
                    local.get 6
                    i32.store offset=1476
                    i32.const 0
                    i32.const 0
                    i32.store offset=1488
                    local.get 11
                    i32.const 32
                    i32.add
                    local.tee 0
                    local.set 5
                    loop  ;; label = @9
                      local.get 5
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 4
                      i32.add
                      local.tee 2
                      local.get 5
                      local.get 0
                      i32.const 8
                      i32.add
                      local.get 8
                      i32.lt_u
                      local.tee 6
                      select
                      local.set 5
                      local.get 2
                      local.get 0
                      local.get 6
                      select
                      local.set 0
                      local.get 6
                      br_if 0 (;@9;)
                    end
                    local.get 11
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 11
                    local.get 11
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 11
                    local.get 11
                    local.get 4
                    i32.sub
                    local.tee 8
                    i32.store
                    local.get 4
                    local.get 8
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 8
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 8
                      i32.const 3
                      i32.shr_u
                      local.tee 5
                      i32.const 3
                      i32.shl
                      i32.const 1068
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1028
                          local.tee 6
                          i32.const 1
                          local.get 5
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 6
                          local.get 5
                          i32.or
                          i32.store offset=1028
                          local.get 0
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 0
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 0
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 0
                    local.set 0
                    block  ;; label = @9
                      local.get 8
                      i32.const 8
                      i32.shr_u
                      local.tee 5
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      local.set 0
                      local.get 8
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 5
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 0
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 5
                      i32.shl
                      local.tee 6
                      local.get 6
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 6
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 5
                      local.get 0
                      i32.or
                      local.get 6
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 8
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 0
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 0
                    i32.store
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 1332
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1032
                      local.tee 6
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 6
                      local.get 2
                      i32.or
                      i32.store offset=1032
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 5
                      i32.store
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 8
                    i32.const 0
                    i32.const 25
                    local.get 0
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 0
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 0
                    local.get 5
                    i32.load
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      local.tee 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 8
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 0
                      i32.const 29
                      i32.shr_u
                      local.set 6
                      local.get 0
                      i32.const 1
                      i32.shl
                      local.set 0
                      local.get 5
                      local.get 6
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 2
                      i32.load
                      local.tee 6
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    local.get 4
                    i32.store
                    local.get 4
                    i32.const 24
                    i32.add
                    local.get 5
                    i32.store
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.load offset=8
                  local.set 0
                  local.get 5
                  local.get 3
                  i32.store offset=8
                  local.get 0
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  i32.const 0
                  i32.store offset=24
                  local.get 3
                  local.get 0
                  i32.store offset=8
                  local.get 3
                  local.get 5
                  i32.store offset=12
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.set 0
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 0
              local.get 4
              i32.store offset=12
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 0
              i32.store offset=8
              local.get 4
              local.get 5
              i32.store offset=12
            end
            i32.const 0
            i32.load offset=1040
            local.tee 0
            local.get 3
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1052
            local.tee 4
            local.get 3
            i32.add
            local.tee 5
            local.get 0
            local.get 3
            i32.sub
            local.tee 0
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 0
            i32.store offset=1040
            i32.const 0
            local.get 5
            i32.store offset=1052
            local.get 4
            local.get 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          i32.const 0
          local.set 0
          i32.const 0
          i32.const 48
          i32.store offset=1024
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1332
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=1032
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 6
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 6
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 3
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 3
          i32.add
          local.tee 6
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 1068
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1028
                local.tee 3
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 3
                local.get 4
                i32.or
                i32.store offset=1028
                local.get 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 6
            i32.store offset=12
            local.get 0
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 0
            i32.store offset=12
            local.get 6
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 8
              i32.shr_u
              local.tee 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 0
              br 1 (;@4;)
            end
            i32.const 31
            local.set 0
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 0
            i32.shl
            local.tee 3
            local.get 3
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 3
            i32.shl
            local.tee 5
            local.get 5
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 5
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 3
            local.get 0
            i32.or
            local.get 5
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 4
            local.get 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 0
          end
          local.get 6
          local.get 0
          i32.store offset=28
          local.get 6
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 1332
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 0
            i32.shl
            local.tee 5
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.get 6
            i32.store
            i32.const 0
            local.get 7
            local.get 5
            i32.or
            i32.store offset=1032
            local.get 6
            local.get 3
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 6
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.const 25
          local.get 0
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 0
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 0
          local.get 3
          i32.load
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 4
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const 29
              i32.shr_u
              local.set 5
              local.get 0
              i32.const 1
              i32.shl
              local.set 0
              local.get 3
              local.get 5
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 2
            local.get 6
            i32.store
            local.get 6
            local.get 3
            i32.store offset=24
            local.get 6
            local.get 6
            i32.store offset=12
            local.get 6
            local.get 6
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 0
          local.get 3
          local.get 6
          i32.store offset=8
          local.get 0
          local.get 6
          i32.store offset=12
          local.get 6
          i32.const 0
          i32.store offset=24
          local.get 6
          local.get 0
          i32.store offset=8
          local.get 6
          local.get 3
          i32.store offset=12
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 6
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1332
            i32.add
            local.tee 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1032
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 6
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 6
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 8
          i32.store offset=24
        end
        local.get 6
        i32.const 20
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 6
        local.get 3
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 6
        local.get 3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 1068
          i32.add
          local.set 3
          i32.const 0
          i32.load offset=1048
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 2
              i32.or
              i32.store offset=1028
              local.get 3
              local.set 8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 0
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=1048
        i32.const 0
        local.get 4
        i32.store offset=1036
      end
      local.get 6
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $free (type 2) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1044
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=1048
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 6
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1068
              i32.add
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1028
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1028
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 1
                i32.load offset=8
                local.tee 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=12
                local.get 1
                i32.ne
                drop
              end
              local.get 5
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 6
              local.get 4
              local.tee 5
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.set 2
              local.get 5
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1332
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              i32.store
              local.get 5
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1032
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1032
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 5
            i32.store
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 5
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 5
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=1036
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1052
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1052
            i32.const 0
            i32.const 0
            i32.load offset=1040
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1040
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1048
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1036
            i32.const 0
            i32.const 0
            i32.store offset=1048
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1048
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=1048
            i32.const 0
            i32.const 0
            i32.load offset=1036
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=1036
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.set 4
              block  ;; label = @6
                local.get 3
                i32.load offset=8
                local.tee 5
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 3
                i32.const 3
                i32.shl
                i32.const 1068
                i32.add
                local.tee 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1044
                local.get 5
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 4
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1028
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store offset=1028
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 4
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1044
                local.get 4
                i32.gt_u
                drop
              end
              local.get 4
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 4
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1044
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=12
                  local.get 3
                  i32.ne
                  drop
                end
                local.get 5
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 5
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 6
                local.get 4
                local.tee 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1332
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 5
                i32.store
                local.get 5
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1032
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1032
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 5
              i32.store
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 5
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 5
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=1048
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1036
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 1068
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1028
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=1028
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 5
        local.get 5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 5
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 4
        local.get 2
        i32.or
        local.get 5
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1332
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1032
          local.tee 5
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 5
          local.get 3
          i32.or
          i32.store offset=1032
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 5
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.set 0
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 1
        local.get 4
        i32.store offset=12
      end
      i32.const 0
      i32.const 0
      i32.load offset=1060
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=1060
      local.get 1
      br_if 0 (;@1;)
      i32.const 1484
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const -1
      i32.store offset=1060
    end)
  (func $calloc (type 3) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.mul
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -1
      local.get 2
      local.get 0
      i32.div_u
      local.get 1
      i32.eq
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1024
      i32.const 0
      return
    end
    local.get 1
    i32.const 11
    i32.lt_u
    local.set 2
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.set 3
    local.get 0
    i32.const -8
    i32.add
    local.set 4
    local.get 0
    i32.const -4
    i32.add
    local.tee 5
    i32.load
    local.tee 6
    i32.const 3
    i32.and
    local.set 7
    i32.const 0
    i32.load offset=1044
    local.set 8
    block  ;; label = @1
      local.get 6
      i32.const -8
      i32.and
      local.tee 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 7
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 8
      local.get 4
      i32.gt_u
      drop
    end
    i32.const 16
    local.get 3
    local.get 2
    select
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1508
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 4
        local.get 9
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 9
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 9
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1052
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1040
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          local.get 6
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 4
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1052
          i32.const 0
          local.get 9
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1040
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1048
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1036
          local.get 9
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              local.get 6
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 4
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 4
              local.get 9
              i32.add
              local.tee 9
              local.get 1
              i32.store
              local.get 9
              local.get 9
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 5
            local.get 6
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 4
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1048
          i32.const 0
          local.get 1
          i32.store offset=1036
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 3
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const -8
        i32.and
        local.get 9
        i32.add
        local.tee 10
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 10
        local.get 2
        i32.sub
        local.set 11
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=12
            local.set 1
            block  ;; label = @5
              local.get 7
              i32.load offset=8
              local.tee 9
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 3
              i32.const 3
              i32.shl
              i32.const 1068
              i32.add
              local.tee 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 1
              local.get 9
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1028
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store offset=1028
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.gt_u
              drop
            end
            local.get 1
            local.get 9
            i32.store offset=8
            local.get 9
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 3
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 8
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.get 7
                i32.ne
                drop
              end
              local.get 3
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 7
              i32.const 16
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              local.set 8
              local.get 9
              local.tee 3
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 9
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.load offset=16
              local.tee 9
              br_if 0 (;@5;)
            end
            local.get 8
            i32.const 0
            i32.store
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=28
              local.tee 9
              i32.const 2
              i32.shl
              i32.const 1332
              i32.add
              local.tee 1
              i32.load
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1032
              i32.const -2
              local.get 9
              i32.rotl
              i32.and
              i32.store offset=1032
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 3
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 3
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 11
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 6
          i32.const 1
          i32.and
          local.get 10
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 4
          local.get 10
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 5
        local.get 2
        local.get 6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 4
        local.get 2
        i32.add
        local.tee 1
        local.get 11
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 4
        local.get 10
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 11
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      local.get 5
      i32.load
      local.tee 9
      i32.const -8
      i32.and
      i32.const 4
      i32.const 8
      local.get 9
      i32.const 3
      i32.and
      select
      i32.sub
      local.tee 9
      local.get 1
      local.get 9
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          i32.const 0
          i32.load offset=1048
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1044
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 6
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 1068
              i32.add
              local.tee 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1028
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1028
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 5
            local.get 6
            i32.store offset=8
            local.get 6
            local.get 5
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=12
              local.tee 6
              local.get 0
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=12
                local.get 0
                i32.ne
                drop
              end
              local.get 6
              local.get 3
              i32.store offset=8
              local.get 3
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 3
              local.set 4
              local.get 5
              local.tee 6
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 3
              local.get 6
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 4
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1332
              i32.add
              local.tee 3
              i32.load
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1032
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1032
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 1
        i32.store offset=1036
        local.get 2
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1052
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1052
            i32.const 0
            i32.const 0
            i32.load offset=1040
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1040
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1048
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=1036
            i32.const 0
            i32.const 0
            i32.store offset=1048
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=1048
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=1048
            i32.const 0
            i32.const 0
            i32.load offset=1036
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1036
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          i32.const 0
          i32.load offset=1044
          local.set 4
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.set 5
              block  ;; label = @6
                local.get 2
                i32.load offset=8
                local.tee 6
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 2
                i32.const 3
                i32.shl
                i32.const 1068
                i32.add
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 6
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 5
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=1028
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store offset=1028
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.gt_u
                drop
              end
              local.get 5
              local.get 6
              i32.store offset=8
              local.get 6
              local.get 5
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  local.get 2
                  i32.ne
                  drop
                end
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 4
                local.get 5
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1332
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1032
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1032
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1048
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1036
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 3
        i32.const 3
        i32.shl
        i32.const 1068
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1028
            local.tee 5
            i32.const 1
            local.get 3
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 5
            local.get 3
            i32.or
            i32.store offset=1028
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 3
        end
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 3
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 5
        local.get 5
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 5
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 5
        local.get 3
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      local.get 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1332
      i32.add
      local.set 5
      block  ;; label = @2
        i32.const 0
        i32.load offset=1032
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 5
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=1032
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 5
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 5
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 5
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 5
      i32.load offset=8
      local.set 1
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=12
    end)
  (func $posix_memalign (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call $dlmalloc
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        i32.popcnt
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const 48
        local.set 3
        i32.const -64
        local.get 1
        i32.sub
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call $internal_memalign
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $internal_memalign (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 0
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1024
      i32.const 0
      return
    end
    block  ;; label = @1
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.const 12
      i32.or
      local.get 0
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      local.get 3
      local.get 0
      i32.add
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 0
    i32.const 8
    i32.add)
  (func $aligned_alloc (type 3) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 16
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    local.get 0
    local.get 1
    call $internal_memalign)
  (func $malloc_usable_size (type 4) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 0
      i32.const 3
      i32.and
      local.tee 2
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.and
      i32.const 4
      i32.const 8
      local.get 2
      select
      i32.sub
      local.set 1
    end
    local.get 1)
  (func $__main_argc_argv (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $main)
  (func $_Exit (type 2) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__main_void (type 9) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 12
              i32.add
              call $__wasi_args_sizes_get
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              local.tee 1
              i32.const 1
              i32.add
              local.tee 2
              local.get 1
              i32.lt_u
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=12
              call $malloc
              local.tee 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 4
              call $calloc
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 3
              call $__wasi_args_get
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=8
              local.get 1
              call $__main_argc_argv
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              global.set 0
              local.get 1
              return
            end
            i32.const 71
            call $_Exit
            unreachable
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        i32.const 70
        call $_Exit
        unreachable
      end
      local.get 3
      call $free
      i32.const 70
      call $_Exit
      unreachable
    end
    local.get 3
    call $free
    local.get 1
    call $free
    i32.const 71
    call $_Exit
    unreachable)
  (func $dummy (type 7))
  (func $__prepare_for_exit (type 7)
    call $dummy
    call $__stdio_exit)
  (func $exit (type 2) (param i32)
    call $dummy
    call $__stdio_exit
    local.get 0
    call $_Exit
    unreachable)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.and
        i32.const 0
        i32.ne
        local.get 2
        i32.const 0
        i32.ne
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.ne
        local.set 4
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.const 0
        i32.ne
        i32.and
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.and
        local.tee 4
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 16
            i32.ge_u
            br_if 0 (;@4;)
            local.get 2
            local.set 4
            br 1 (;@3;)
          end
          local.get 2
          i32.const -16
          i32.add
          local.set 4
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 3
            i32.const 16
            i32.add
            local.set 3
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 2
            i32.const -16
            i32.add
            local.tee 2
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 2
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            local.get 3
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            i32.store8
            local.get 3
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 6
            local.get 3
            i32.const 3
            i32.add
            local.set 7
            local.get 2
            i32.const -20
            i32.add
            i32.const -16
            i32.and
            local.set 8
            i32.const 0
            local.set 4
            loop  ;; label = @5
              local.get 7
              local.get 4
              i32.add
              local.tee 3
              local.get 1
              local.get 4
              i32.add
              local.tee 9
              i32.const 4
              i32.add
              i32.load
              local.tee 10
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 9
              i32.const 8
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 9
              i32.const 12
              i32.add
              i32.load
              local.tee 10
              i32.const 8
              i32.shl
              local.get 5
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 9
              i32.const 16
              i32.add
              i32.load
              local.tee 5
              i32.const 8
              i32.shl
              local.get 10
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 6
              i32.const -16
              i32.add
              local.tee 6
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 4
            i32.add
            local.set 3
            local.get 1
            local.get 4
            i32.add
            i32.const 3
            i32.add
            local.set 1
            local.get 2
            local.get 8
            i32.sub
            i32.const -19
            i32.add
            local.set 2
            br 2 (;@2;)
          end
          local.get 3
          local.get 1
          i32.load
          local.tee 5
          i32.store8
          local.get 3
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const -2
          i32.add
          local.set 6
          local.get 3
          i32.const 2
          i32.add
          local.set 7
          local.get 2
          i32.const -20
          i32.add
          i32.const -16
          i32.and
          local.set 8
          i32.const 0
          local.set 4
          loop  ;; label = @4
            local.get 7
            local.get 4
            i32.add
            local.tee 3
            local.get 1
            local.get 4
            i32.add
            local.tee 9
            i32.const 4
            i32.add
            i32.load
            local.tee 10
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 9
            i32.const 8
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 9
            i32.const 12
            i32.add
            i32.load
            local.tee 10
            i32.const 16
            i32.shl
            local.get 5
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 9
            i32.const 16
            i32.add
            i32.load
            local.tee 5
            i32.const 16
            i32.shl
            local.get 10
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 4
            i32.const 16
            i32.add
            local.set 4
            local.get 6
            i32.const -16
            i32.add
            local.tee 6
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 4
          i32.add
          local.set 3
          local.get 1
          local.get 4
          i32.add
          i32.const 2
          i32.add
          local.set 1
          local.get 2
          local.get 8
          i32.sub
          i32.const -18
          i32.add
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 1
        i32.load
        local.tee 5
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 6
        local.get 3
        i32.const 1
        i32.add
        local.set 7
        local.get 2
        i32.const -20
        i32.add
        i32.const -16
        i32.and
        local.set 8
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 7
          local.get 4
          i32.add
          local.tee 3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 4
          i32.add
          i32.load
          local.tee 10
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.add
          local.get 9
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 8
          i32.add
          local.get 9
          i32.const 12
          i32.add
          i32.load
          local.tee 10
          i32.const 24
          i32.shl
          local.get 5
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 12
          i32.add
          local.get 9
          i32.const 16
          i32.add
          i32.load
          local.tee 5
          i32.const 24
          i32.shl
          local.get 10
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 4
          i32.const 16
          i32.add
          local.set 4
          local.get 6
          i32.const -16
          i32.add
          local.tee 6
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 7
        local.get 4
        i32.add
        local.set 3
        local.get 1
        local.get 4
        i32.add
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        local.get 8
        i32.sub
        i32.const -17
        i32.add
        local.set 2
      end
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 3
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 3
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 3
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 3
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 3
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 3
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 3
        i32.const 16
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 2
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
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
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 6
        i64.store
        local.get 1
        i32.const 8
        i32.add
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
  (func $__math_xflow (type 10) (param i32 f64) (result f64)
    local.get 1
    f64.neg
    local.get 1
    local.get 0
    select
    local.get 1
    f64.mul)
  (func $__math_uflow (type 11) (param i32) (result f64)
    local.get 0
    f64.const 0x1p-767 (;=1.28823e-231;)
    call $__math_xflow)
  (func $__math_oflow (type 11) (param i32) (result f64)
    local.get 0
    f64.const 0x1p+769 (;=3.10504e+231;)
    call $__math_xflow)
  (func $exp (type 12) (param f64) (result f64)
    (local i64 i32 i32 i32 f64 f64 f64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i64.reinterpret_f64
          local.tee 1
          i64.const 52
          i64.shr_u
          i32.wrap_i64
          i32.const 2047
          i32.and
          local.tee 2
          i32.const -969
          i32.add
          local.tee 3
          i32.const 63
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 3
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          f64.const 0x1p+0 (;=1;)
          return
        end
        local.get 2
        i32.const 1033
        i32.lt_u
        br_if 0 (;@2;)
        f64.const 0x0p+0 (;=0;)
        local.set 5
        local.get 1
        i64.const -4503599627370496
        i64.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.const 2047
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          f64.const 0x1p+0 (;=1;)
          f64.add
          return
        end
        block  ;; label = @3
          local.get 1
          i64.const -1
          i64.gt_s
          br_if 0 (;@3;)
          i32.const 0
          call $__math_uflow
          return
        end
        i32.const 0
        call $__math_oflow
        return
      end
      i32.const 0
      f64.load offset=2640
      local.get 0
      f64.mul
      i32.const 0
      f64.load offset=2648
      local.tee 5
      f64.add
      local.tee 6
      i64.reinterpret_f64
      local.tee 1
      i32.wrap_i64
      local.tee 3
      i32.const 4
      i32.shl
      i32.const 2032
      i32.and
      local.tee 2
      i32.const 2752
      i32.add
      f64.load
      local.get 6
      local.get 5
      f64.sub
      local.tee 5
      i32.const 0
      f64.load offset=2664
      f64.mul
      i32.const 0
      f64.load offset=2656
      local.get 5
      f64.mul
      local.get 0
      f64.add
      f64.add
      local.tee 0
      f64.add
      local.get 0
      local.get 0
      f64.mul
      local.tee 5
      i32.const 0
      f64.load offset=2672
      local.get 0
      i32.const 0
      f64.load offset=2680
      f64.mul
      f64.add
      f64.mul
      f64.add
      local.get 5
      local.get 5
      f64.mul
      i32.const 0
      f64.load offset=2688
      local.get 0
      i32.const 0
      f64.load offset=2696
      f64.mul
      f64.add
      f64.mul
      f64.add
      local.set 0
      local.get 2
      i32.const 8
      i32.or
      i32.const 2752
      i32.add
      i64.load
      local.get 1
      i64.const 45
      i64.shl
      i64.add
      local.set 1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i64.const -4544132024016830464
          i64.add
          f64.reinterpret_i64
          local.tee 5
          f64.mul
          local.get 5
          f64.add
          f64.const 0x1p+1009 (;=5.48612e+303;)
          f64.mul
          return
        end
        block  ;; label = @3
          local.get 0
          local.get 1
          i64.const 4602678819172646912
          i64.add
          f64.reinterpret_i64
          local.tee 5
          f64.mul
          local.tee 6
          local.get 5
          f64.add
          local.tee 0
          f64.const 0x1p+0 (;=1;)
          f64.lt
          i32.const 1
          i32.xor
          br_if 0 (;@3;)
          local.get 0
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.tee 7
          local.get 6
          local.get 5
          local.get 0
          f64.sub
          f64.add
          local.get 0
          f64.const 0x1p+0 (;=1;)
          local.get 7
          f64.sub
          f64.add
          f64.add
          f64.add
          f64.const -0x1p+0 (;=-1;)
          f64.add
          local.set 0
        end
        local.get 0
        f64.const 0x1p-1022 (;=2.22507e-308;)
        f64.mul
        return
      end
      local.get 0
      local.get 1
      f64.reinterpret_i64
      local.tee 5
      f64.mul
      local.get 5
      f64.add
      local.set 5
    end
    local.get 5)
  (func $__sin (type 13) (param f64 f64 i32) (result f64)
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
    local.get 5
    f64.const 0x1.5555555555549p-3 (;=0.166667;)
    f64.mul
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
    f64.add
    f64.sub)
  (func $scalbn (type 14) (param f64 i32) (result f64)
    (local i32)
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
          i32.const -1023
          i32.add
          local.tee 2
          i32.const 1024
          i32.ge_s
          br_if 0 (;@3;)
          local.get 2
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
      f64.const 0x1p-969 (;=2.00417e-292;)
      f64.mul
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const 969
        i32.add
        local.tee 2
        i32.const -1023
        i32.le_s
        br_if 0 (;@2;)
        local.get 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      f64.const 0x1p-969 (;=2.00417e-292;)
      f64.mul
      local.set 0
      local.get 1
      i32.const -2960
      local.get 1
      i32.const -2960
      i32.gt_s
      select
      i32.const 1938
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
  (func $__rem_pio2_large (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 f64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 5
    global.set 0
    i32.const 0
    local.set 6
    local.get 2
    local.get 2
    i32.const -3
    i32.add
    i32.const 24
    i32.div_s
    local.tee 7
    i32.const 0
    local.get 7
    i32.const 0
    i32.gt_s
    select
    local.tee 8
    i32.const -24
    i32.mul
    i32.add
    local.set 9
    block  ;; label = @1
      local.get 4
      i32.const 2
      i32.shl
      i32.const 4800
      i32.add
      i32.load
      local.tee 10
      local.get 3
      i32.const -1
      i32.add
      local.tee 2
      i32.add
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 10
      local.get 3
      i32.add
      local.set 11
      local.get 8
      local.get 2
      i32.sub
      local.set 2
      local.get 8
      local.get 3
      i32.sub
      i32.const 2
      i32.shl
      i32.const 4820
      i32.add
      local.set 12
      local.get 5
      i32.const 320
      i32.add
      local.set 7
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
            f64.const 0x0p+0 (;=0;)
            local.set 13
            br 1 (;@3;)
          end
          local.get 12
          i32.load
          f64.convert_i32_s
          local.set 13
        end
        local.get 7
        local.get 13
        f64.store
        local.get 7
        i32.const 8
        i32.add
        local.set 7
        local.get 12
        i32.const 4
        i32.add
        local.set 12
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 11
        i32.const -1
        i32.add
        local.tee 11
        br_if 0 (;@2;)
      end
    end
    local.get 9
    i32.const -24
    i32.add
    local.set 14
    local.get 3
    i32.const 3
    i32.shl
    local.get 5
    i32.const 320
    i32.add
    i32.add
    i32.const -8
    i32.add
    local.set 11
    local.get 3
    i32.const 1
    i32.lt_s
    local.set 15
    loop  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 13
      block  ;; label = @2
        local.get 15
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        local.get 3
        local.set 12
        local.get 11
        local.set 7
        loop  ;; label = @3
          local.get 13
          local.get 2
          f64.load
          local.get 7
          f64.load
          f64.mul
          f64.add
          local.set 13
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          local.get 7
          i32.const -8
          i32.add
          local.set 7
          local.get 12
          i32.const -1
          i32.add
          local.tee 12
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 6
      i32.const 3
      i32.shl
      i32.add
      local.get 13
      f64.store
      local.get 11
      i32.const 8
      i32.add
      local.set 11
      local.get 6
      local.get 10
      i32.lt_s
      local.set 2
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 2
      br_if 0 (;@1;)
    end
    i32.const 23
    local.get 14
    i32.sub
    local.set 16
    i32.const 24
    local.get 14
    i32.sub
    local.set 17
    local.get 10
    i32.const 2
    i32.shl
    local.get 5
    i32.const 480
    i32.add
    i32.add
    i32.const -4
    i32.add
    local.set 18
    local.get 5
    i32.const 480
    i32.add
    i32.const -4
    i32.add
    local.set 19
    local.get 5
    i32.const -8
    i32.add
    local.set 20
    local.get 10
    local.set 6
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        local.get 6
        i32.const 3
        i32.shl
        local.tee 2
        i32.add
        f64.load
        local.set 13
        block  ;; label = @3
          local.get 6
          i32.const 1
          i32.lt_s
          local.tee 15
          br_if 0 (;@3;)
          local.get 20
          local.get 2
          i32.add
          local.set 2
          local.get 5
          i32.const 480
          i32.add
          local.set 7
          local.get 6
          local.set 12
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 13
                f64.const 0x1p-24 (;=5.96046e-08;)
                f64.mul
                local.tee 21
                f64.abs
                f64.const 0x1p+31 (;=2.14748e+09;)
                f64.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 21
                i32.trunc_f64_s
                local.set 11
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 11
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 13
                local.get 11
                f64.convert_i32_s
                local.tee 21
                f64.const -0x1p+24 (;=-1.67772e+07;)
                f64.mul
                f64.add
                local.tee 13
                f64.abs
                f64.const 0x1p+31 (;=2.14748e+09;)
                f64.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 13
                i32.trunc_f64_s
                local.set 11
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 11
            end
            local.get 7
            local.get 11
            i32.store
            local.get 7
            i32.const 4
            i32.add
            local.set 7
            local.get 2
            f64.load
            local.get 21
            f64.add
            local.set 13
            local.get 2
            i32.const -8
            i32.add
            local.set 2
            local.get 12
            i32.const -1
            i32.add
            local.tee 12
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 13
            local.get 14
            call $scalbn
            local.tee 13
            local.get 13
            f64.const 0x1p-3 (;=0.125;)
            f64.mul
            f64.floor
            f64.const -0x1p+3 (;=-8;)
            f64.mul
            f64.add
            local.tee 13
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 13
            i32.trunc_f64_s
            local.set 22
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 22
        end
        local.get 13
        local.get 22
        f64.convert_i32_s
        f64.sub
        local.set 13
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 14
                  i32.const 1
                  i32.lt_s
                  local.tee 23
                  br_if 0 (;@7;)
                  local.get 6
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
                  local.get 17
                  i32.shr_s
                  local.tee 2
                  local.get 17
                  i32.shl
                  i32.sub
                  local.tee 7
                  i32.store
                  local.get 7
                  local.get 16
                  i32.shr_s
                  local.set 24
                  local.get 2
                  local.get 22
                  i32.add
                  local.set 22
                  br 1 (;@6;)
                end
                local.get 14
                br_if 1 (;@5;)
                local.get 6
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
                local.set 24
              end
              local.get 24
              i32.const 1
              i32.lt_s
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            i32.const 2
            local.set 24
            local.get 13
            f64.const 0x1p-1 (;=0.5;)
            f64.ge
            i32.const 1
            i32.xor
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 24
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 15
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 15
              br 1 (;@4;)
            end
            i32.const 0
            local.set 15
            local.get 5
            i32.const 480
            i32.add
            local.set 2
            local.get 6
            local.set 11
            loop  ;; label = @5
              local.get 2
              i32.load
              local.set 7
              i32.const 16777215
              local.set 12
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 15
                    br_if 0 (;@8;)
                    local.get 7
                    i32.eqz
                    br_if 1 (;@7;)
                    i32.const 1
                    local.set 15
                    i32.const 16777216
                    local.set 12
                  end
                  local.get 2
                  local.get 12
                  local.get 7
                  i32.sub
                  i32.store
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 15
              end
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 11
              i32.const -1
              i32.add
              local.tee 11
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 23
            br_if 0 (;@4;)
            local.get 14
            i32.const -1
            i32.add
            local.tee 2
            i32.const 1
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                br_table 0 (;@6;) 1 (;@5;) 0 (;@6;)
              end
              local.get 6
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
            local.get 6
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
          local.get 22
          i32.const 1
          i32.add
          local.set 22
          local.get 24
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          f64.const 0x1p+0 (;=1;)
          local.get 13
          f64.sub
          local.set 13
          i32.const 2
          local.set 24
          local.get 15
          i32.eqz
          br_if 0 (;@3;)
          local.get 13
          f64.const 0x1p+0 (;=1;)
          local.get 14
          call $scalbn
          f64.sub
          local.set 13
        end
        block  ;; label = @3
          local.get 13
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            local.get 10
            i32.le_s
            br_if 0 (;@4;)
            local.get 19
            local.get 6
            i32.const 2
            i32.shl
            i32.add
            local.set 2
            i32.const 0
            local.set 7
            local.get 6
            local.set 12
            loop  ;; label = @5
              local.get 2
              i32.load
              local.get 7
              i32.or
              local.set 7
              local.get 2
              i32.const -4
              i32.add
              local.set 2
              local.get 12
              i32.const -1
              i32.add
              local.tee 12
              local.get 10
              i32.gt_s
              br_if 0 (;@5;)
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 480
            i32.add
            local.get 6
            i32.const 2
            i32.shl
            i32.add
            i32.const -4
            i32.add
            local.set 2
            local.get 14
            local.set 9
            loop  ;; label = @5
              local.get 6
              i32.const -1
              i32.add
              local.set 6
              local.get 9
              i32.const -24
              i32.add
              local.set 9
              local.get 2
              i32.load
              local.set 7
              local.get 2
              i32.const -4
              i32.add
              local.set 2
              local.get 7
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          local.get 18
          local.set 2
          local.get 6
          local.set 11
          loop  ;; label = @4
            local.get 11
            i32.const 1
            i32.add
            local.set 11
            local.get 2
            i32.load
            local.set 7
            local.get 2
            i32.const -4
            i32.add
            local.set 2
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 5
          i32.const 320
          i32.add
          local.get 3
          local.get 6
          i32.add
          i32.const 3
          i32.shl
          i32.add
          local.set 15
          loop  ;; label = @4
            local.get 5
            i32.const 320
            i32.add
            local.get 6
            local.get 3
            i32.add
            i32.const 3
            i32.shl
            i32.add
            local.get 6
            i32.const 1
            i32.add
            local.tee 6
            local.get 8
            i32.add
            i32.const 2
            i32.shl
            i32.const 4816
            i32.add
            i32.load
            f64.convert_i32_s
            f64.store
            f64.const 0x0p+0 (;=0;)
            local.set 13
            block  ;; label = @5
              local.get 3
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              local.get 0
              local.set 2
              local.get 15
              local.set 7
              local.get 3
              local.set 12
              loop  ;; label = @6
                local.get 13
                local.get 2
                f64.load
                local.get 7
                f64.load
                f64.mul
                f64.add
                local.set 13
                local.get 2
                i32.const 8
                i32.add
                local.set 2
                local.get 7
                i32.const -8
                i32.add
                local.set 7
                local.get 12
                i32.const -1
                i32.add
                local.tee 12
                br_if 0 (;@6;)
              end
            end
            local.get 5
            local.get 6
            i32.const 3
            i32.shl
            i32.add
            local.get 13
            f64.store
            local.get 15
            i32.const 8
            i32.add
            local.set 15
            local.get 6
            local.get 11
            i32.lt_s
            br_if 0 (;@4;)
          end
          local.get 11
          local.set 6
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 13
          i32.const 0
          local.get 14
          i32.sub
          call $scalbn
          local.tee 13
          f64.const 0x1p+24 (;=1.67772e+07;)
          f64.ge
          i32.const 1
          i32.xor
          br_if 0 (;@3;)
          local.get 6
          i32.const 2
          i32.shl
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 13
              f64.const 0x1p-24 (;=5.96046e-08;)
              f64.mul
              local.tee 21
              f64.abs
              f64.const 0x1p+31 (;=2.14748e+09;)
              f64.lt
              i32.eqz
              br_if 0 (;@5;)
              local.get 21
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
          local.get 7
          i32.add
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 13
              local.get 2
              f64.convert_i32_s
              f64.const -0x1p+24 (;=-1.67772e+07;)
              f64.mul
              f64.add
              local.tee 13
              f64.abs
              f64.const 0x1p+31 (;=2.14748e+09;)
              f64.lt
              i32.eqz
              br_if 0 (;@5;)
              local.get 13
              i32.trunc_f64_s
              local.set 12
              br 1 (;@4;)
            end
            i32.const -2147483648
            local.set 12
          end
          local.get 7
          local.get 12
          i32.store
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 13
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 13
            i32.trunc_f64_s
            local.set 2
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 2
        end
        local.get 14
        local.set 9
      end
      local.get 5
      i32.const 480
      i32.add
      local.get 6
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.store
    end
    block  ;; label = @1
      local.get 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 6
      i32.const 1
      i32.add
      local.set 12
      f64.const 0x1p+0 (;=1;)
      local.get 9
      call $scalbn
      local.set 13
      local.get 5
      i32.const 480
      i32.add
      local.get 6
      i32.const 2
      i32.shl
      i32.add
      local.set 2
      local.get 5
      local.get 6
      i32.const 3
      i32.shl
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.get 13
        local.get 2
        i32.load
        f64.convert_i32_s
        f64.mul
        f64.store
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 7
        i32.const -8
        i32.add
        local.set 7
        local.get 13
        f64.const 0x1p-24 (;=5.96046e-08;)
        f64.mul
        local.set 13
        local.get 12
        i32.const -1
        i32.add
        local.tee 12
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
      end
      local.get 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 5
      local.get 6
      i32.const 3
      i32.shl
      i32.add
      local.set 11
      local.get 6
      local.set 2
      loop  ;; label = @2
        local.get 6
        local.get 2
        local.tee 15
        i32.sub
        local.set 3
        f64.const 0x0p+0 (;=0;)
        local.set 13
        i32.const 0
        local.set 2
        i32.const 0
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 13
            local.get 2
            i32.const 7584
            i32.add
            f64.load
            local.get 11
            local.get 2
            i32.add
            f64.load
            f64.mul
            f64.add
            local.set 13
            local.get 7
            local.get 10
            i32.ge_s
            br_if 1 (;@3;)
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 7
            local.get 3
            i32.lt_u
            local.set 12
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 12
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        i32.const 3
        i32.shl
        i32.add
        local.get 13
        f64.store
        local.get 11
        i32.const -8
        i32.add
        local.set 11
        local.get 15
        i32.const -1
        i32.add
        local.set 2
        local.get 15
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 4
      i32.const 3
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_table 1 (;@4;) 2 (;@3;) 2 (;@3;) 0 (;@5;) 1 (;@4;)
            end
            f64.const 0x0p+0 (;=0;)
            local.set 25
            block  ;; label = @5
              local.get 6
              i32.const 1
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 160
              i32.add
              local.get 6
              i32.const 3
              i32.shl
              i32.add
              local.tee 7
              i32.const -8
              i32.add
              local.set 2
              local.get 7
              f64.load
              local.set 13
              local.get 6
              local.set 7
              loop  ;; label = @6
                local.get 2
                local.get 2
                f64.load
                local.tee 26
                local.get 13
                f64.add
                local.tee 21
                f64.store
                local.get 2
                i32.const 8
                i32.add
                local.get 13
                local.get 26
                local.get 21
                f64.sub
                f64.add
                f64.store
                local.get 2
                i32.const -8
                i32.add
                local.set 2
                local.get 21
                local.set 13
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                i32.const 0
                i32.gt_s
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 160
              i32.add
              local.get 6
              i32.const 3
              i32.shl
              i32.add
              local.tee 7
              i32.const -8
              i32.add
              local.set 2
              local.get 7
              f64.load
              local.set 13
              local.get 6
              local.set 7
              loop  ;; label = @6
                local.get 2
                local.get 2
                f64.load
                local.tee 26
                local.get 13
                f64.add
                local.tee 21
                f64.store
                local.get 2
                i32.const 8
                i32.add
                local.get 13
                local.get 26
                local.get 21
                f64.sub
                f64.add
                f64.store
                local.get 2
                i32.const -8
                i32.add
                local.set 2
                local.get 21
                local.set 13
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                i32.const 1
                i32.gt_s
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 160
              i32.add
              local.get 6
              i32.const 3
              i32.shl
              i32.add
              local.set 2
              f64.const 0x0p+0 (;=0;)
              local.set 25
              loop  ;; label = @6
                local.get 25
                local.get 2
                f64.load
                f64.add
                local.set 25
                local.get 2
                i32.const -8
                i32.add
                local.set 2
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                i32.const 1
                i32.gt_s
                br_if 0 (;@6;)
              end
            end
            local.get 5
            f64.load offset=160
            local.set 13
            local.get 24
            br_if 2 (;@2;)
            local.get 1
            local.get 13
            f64.store
            local.get 1
            local.get 25
            f64.store offset=16
            local.get 1
            local.get 5
            i64.load offset=168
            i64.store offset=8
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 0
              i32.ge_s
              br_if 0 (;@5;)
              f64.const 0x0p+0 (;=0;)
              local.set 13
              br 1 (;@4;)
            end
            local.get 6
            i32.const 1
            i32.add
            local.set 7
            local.get 5
            i32.const 160
            i32.add
            local.get 6
            i32.const 3
            i32.shl
            i32.add
            local.set 2
            f64.const 0x0p+0 (;=0;)
            local.set 13
            loop  ;; label = @5
              local.get 13
              local.get 2
              f64.load
              f64.add
              local.set 13
              local.get 2
              i32.const -8
              i32.add
              local.set 2
              local.get 7
              i32.const -1
              i32.add
              local.tee 7
              i32.const 0
              i32.gt_s
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 13
          f64.neg
          local.get 13
          local.get 24
          select
          f64.store
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
            f64.const 0x0p+0 (;=0;)
            local.set 13
            br 1 (;@3;)
          end
          local.get 6
          i32.const 1
          i32.add
          local.set 7
          local.get 5
          i32.const 160
          i32.add
          local.get 6
          i32.const 3
          i32.shl
          i32.add
          local.set 2
          f64.const 0x0p+0 (;=0;)
          local.set 13
          loop  ;; label = @4
            local.get 13
            local.get 2
            f64.load
            f64.add
            local.set 13
            local.get 2
            i32.const -8
            i32.add
            local.set 2
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 13
        f64.neg
        local.get 13
        local.get 24
        select
        f64.store
        local.get 5
        f64.load offset=160
        local.get 13
        f64.sub
        local.set 13
        block  ;; label = @3
          local.get 6
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          local.get 5
          i32.const 160
          i32.add
          i32.const 8
          i32.or
          local.set 2
          loop  ;; label = @4
            local.get 13
            local.get 2
            f64.load
            f64.add
            local.set 13
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 13
        f64.neg
        local.get 13
        local.get 24
        select
        f64.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 13
      f64.neg
      f64.store
      local.get 1
      local.get 25
      f64.neg
      f64.store offset=16
      local.get 1
      local.get 5
      f64.load offset=168
      f64.neg
      f64.store offset=8
    end
    local.get 5
    i32.const 560
    i32.add
    global.set 0
    local.get 22
    i32.const 7
    i32.and)
  (func $__rem_pio2 (type 16) (param f64 i32) (result i32)
    (local i32 i64 i32 i32 i32 f64 f64 f64 i32 f64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i64.reinterpret_f64
    local.tee 3
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 5
            i32.const 2147483647
            i32.and
            local.tee 6
            i32.const 1074752122
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            i32.const 1048575
            i32.and
            i32.const 598523
            i32.eq
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 6
              i32.const 1073928572
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                f64.const -0x1.921fb544p+0 (;=-1.5708;)
                f64.add
                local.tee 0
                f64.const -0x1.0b4611a626331p-34 (;=-6.0771e-11;)
                f64.add
                local.tee 7
                f64.store
                local.get 1
                local.get 0
                local.get 7
                f64.sub
                f64.const -0x1.0b4611a626331p-34 (;=-6.0771e-11;)
                f64.add
                f64.store offset=8
                i32.const 1
                local.set 5
                br 5 (;@1;)
              end
              local.get 1
              local.get 0
              f64.const 0x1.921fb544p+0 (;=1.5708;)
              f64.add
              local.tee 0
              f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
              f64.add
              local.tee 7
              f64.store
              local.get 1
              local.get 0
              local.get 7
              f64.sub
              f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
              f64.add
              f64.store offset=8
              i32.const -1
              local.set 5
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              f64.const -0x1.921fb544p+1 (;=-3.14159;)
              f64.add
              local.tee 0
              f64.const -0x1.0b4611a626331p-33 (;=-1.21542e-10;)
              f64.add
              local.tee 7
              f64.store
              local.get 1
              local.get 0
              local.get 7
              f64.sub
              f64.const -0x1.0b4611a626331p-33 (;=-1.21542e-10;)
              f64.add
              f64.store offset=8
              i32.const 2
              local.set 5
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            f64.const 0x1.921fb544p+1 (;=3.14159;)
            f64.add
            local.tee 0
            f64.const 0x1.0b4611a626331p-33 (;=1.21542e-10;)
            f64.add
            local.tee 7
            f64.store
            local.get 1
            local.get 0
            local.get 7
            f64.sub
            f64.const 0x1.0b4611a626331p-33 (;=1.21542e-10;)
            f64.add
            f64.store offset=8
            i32.const -2
            local.set 5
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 6
            i32.const 1075594811
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              i32.const 1075183036
              i32.gt_u
              br_if 0 (;@5;)
              local.get 6
              i32.const 1074977148
              i32.eq
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                f64.const -0x1.2d97c7f3p+2 (;=-4.71239;)
                f64.add
                local.tee 0
                f64.const -0x1.90e91a79394cap-33 (;=-1.82313e-10;)
                f64.add
                local.tee 7
                f64.store
                local.get 1
                local.get 0
                local.get 7
                f64.sub
                f64.const -0x1.90e91a79394cap-33 (;=-1.82313e-10;)
                f64.add
                f64.store offset=8
                i32.const 3
                local.set 5
                br 5 (;@1;)
              end
              local.get 1
              local.get 0
              f64.const 0x1.2d97c7f3p+2 (;=4.71239;)
              f64.add
              local.tee 0
              f64.const 0x1.90e91a79394cap-33 (;=1.82313e-10;)
              f64.add
              local.tee 7
              f64.store
              local.get 1
              local.get 0
              local.get 7
              f64.sub
              f64.const 0x1.90e91a79394cap-33 (;=1.82313e-10;)
              f64.add
              f64.store offset=8
              i32.const -3
              local.set 5
              br 4 (;@1;)
            end
            local.get 6
            i32.const 1075388923
            i32.eq
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              f64.const -0x1.921fb544p+2 (;=-6.28319;)
              f64.add
              local.tee 0
              f64.const -0x1.0b4611a626331p-32 (;=-2.43084e-10;)
              f64.add
              local.tee 7
              f64.store
              local.get 1
              local.get 0
              local.get 7
              f64.sub
              f64.const -0x1.0b4611a626331p-32 (;=-2.43084e-10;)
              f64.add
              f64.store offset=8
              i32.const 4
              local.set 5
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            f64.const 0x1.921fb544p+2 (;=6.28319;)
            f64.add
            local.tee 0
            f64.const 0x1.0b4611a626331p-32 (;=2.43084e-10;)
            f64.add
            local.tee 7
            f64.store
            local.get 1
            local.get 0
            local.get 7
            f64.sub
            f64.const 0x1.0b4611a626331p-32 (;=2.43084e-10;)
            f64.add
            f64.store offset=8
            i32.const -4
            local.set 5
            br 3 (;@1;)
          end
          local.get 6
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
        local.tee 7
        f64.const -0x1.921fb544p+0 (;=-1.5708;)
        f64.mul
        f64.add
        local.tee 8
        local.get 7
        f64.const 0x1.0b4611a626331p-34 (;=6.0771e-11;)
        f64.mul
        local.tee 9
        f64.sub
        local.tee 0
        f64.store
        local.get 6
        i32.const 20
        i32.shr_u
        local.tee 10
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
            local.get 7
            f64.abs
            f64.const 0x1p+31 (;=2.14748e+09;)
            f64.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.trunc_f64_s
            local.set 5
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 5
        end
        block  ;; label = @3
          local.get 6
          br_if 0 (;@3;)
          local.get 1
          local.get 8
          local.get 7
          f64.const 0x1.0b4611a6p-34 (;=6.0771e-11;)
          f64.mul
          local.tee 0
          f64.sub
          local.tee 11
          local.get 7
          f64.const 0x1.3198a2e037073p-69 (;=2.02227e-21;)
          f64.mul
          local.get 8
          local.get 11
          f64.sub
          local.get 0
          f64.sub
          f64.sub
          local.tee 9
          f64.sub
          local.tee 0
          f64.store
          block  ;; label = @4
            local.get 10
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
            local.set 8
            br 1 (;@3;)
          end
          local.get 1
          local.get 11
          local.get 7
          f64.const 0x1.3198a2ep-69 (;=2.02227e-21;)
          f64.mul
          local.tee 0
          f64.sub
          local.tee 8
          local.get 7
          f64.const 0x1.b839a252049c1p-104 (;=8.47843e-32;)
          f64.mul
          local.get 11
          local.get 8
          f64.sub
          local.get 0
          f64.sub
          f64.sub
          local.tee 9
          f64.sub
          local.tee 0
          f64.store
        end
        local.get 1
        local.get 8
        local.get 0
        f64.sub
        local.get 9
        f64.sub
        f64.store offset=8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 6
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
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i64.const 4503599627370495
          i64.and
          i64.const 4710765210229538816
          i64.or
          f64.reinterpret_i64
          local.tee 0
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.trunc_f64_s
          local.set 5
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 5
      end
      local.get 2
      local.get 5
      f64.convert_i32_s
      local.tee 7
      f64.store offset=16
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 7
          f64.sub
          f64.const 0x1p+24 (;=1.67772e+07;)
          f64.mul
          local.tee 0
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.trunc_f64_s
          local.set 5
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 5
      end
      local.get 2
      local.get 5
      f64.convert_i32_s
      local.tee 7
      f64.store offset=24
      local.get 2
      local.get 0
      local.get 7
      f64.sub
      f64.const 0x1p+24 (;=1.67772e+07;)
      f64.mul
      local.tee 0
      f64.store offset=32
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br_if 0 (;@3;)
          i32.const 2
          local.set 10
          br 1 (;@2;)
        end
        local.get 2
        i32.const 16
        i32.add
        i32.const 8
        i32.or
        local.set 5
        i32.const 2
        local.set 10
        loop  ;; label = @3
          local.get 10
          i32.const -1
          i32.add
          local.set 10
          local.get 5
          f64.load
          local.set 0
          local.get 5
          i32.const -8
          i32.add
          local.set 5
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      local.get 6
      i32.const 20
      i32.shr_u
      i32.const -1046
      i32.add
      local.get 10
      i32.const 1
      i32.add
      i32.const 1
      call $__rem_pio2_large
      local.set 5
      local.get 2
      f64.load
      local.set 0
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        f64.neg
        f64.store
        local.get 1
        local.get 2
        f64.load offset=8
        f64.neg
        f64.store offset=8
        i32.const 0
        local.get 5
        i32.sub
        local.set 5
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      f64.store
      local.get 1
      local.get 2
      i64.load offset=8
      i64.store offset=8
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 5)
  (func $__cos (type 17) (param f64 f64) (result f64)
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
  (func $sin (type 12) (param f64) (result f64)
    (local i32 i32)
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
        local.get 2
        i32.const 1045430272
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        call $__sin
        local.set 0
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
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        call $__rem_pio2
        i32.const 3
        i32.and
        local.tee 2
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            local.get 1
            f64.load
            local.get 1
            f64.load offset=8
            i32.const 1
            call $__sin
            local.set 0
            br 3 (;@1;)
          end
          local.get 1
          f64.load
          local.get 1
          f64.load offset=8
          call $__cos
          local.set 0
          br 2 (;@1;)
        end
        local.get 1
        f64.load
        local.get 1
        f64.load offset=8
        i32.const 1
        call $__sin
        f64.neg
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      f64.load
      local.get 1
      f64.load offset=8
      call $__cos
      f64.neg
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $cos (type 12) (param f64) (result f64)
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
        call $__cos
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
        local.get 0
        local.get 1
        call $__rem_pio2
        i32.const 3
        i32.and
        local.tee 2
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            local.get 1
            f64.load
            local.get 1
            f64.load offset=8
            call $__cos
            local.set 3
            br 3 (;@1;)
          end
          local.get 1
          f64.load
          local.get 1
          f64.load offset=8
          i32.const 1
          call $__sin
          f64.neg
          local.set 3
          br 2 (;@1;)
        end
        local.get 1
        f64.load
        local.get 1
        f64.load offset=8
        call $__cos
        f64.neg
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      f64.load
      local.get 1
      f64.load offset=8
      i32.const 1
      call $__sin
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $__ldexp_cexp (type 18) (param i32 i32 i32)
    (local f64 f64 i64 f64 f64)
    local.get 1
    f64.load
    f64.const -0x1.37be319ba0da4p+10 (;=-1246.97;)
    f64.add
    call $exp
    local.set 3
    local.get 0
    local.get 1
    f64.load offset=8
    local.tee 4
    call $sin
    local.get 3
    i64.reinterpret_f64
    local.tee 5
    i64.const 4503599627370495
    i64.and
    i64.const 9214364837600034816
    i64.or
    f64.reinterpret_i64
    local.tee 3
    f64.mul
    local.get 2
    local.get 5
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.add
    i32.const -247
    i32.add
    local.tee 1
    i32.const 2
    i32.div_s
    local.tee 2
    i32.const 20
    i32.shl
    i32.const 1072693248
    i32.add
    i64.extend_i32_u
    i64.const 32
    i64.shl
    f64.reinterpret_i64
    local.tee 6
    f64.mul
    local.get 1
    local.get 2
    i32.sub
    i32.const 20
    i32.shl
    i32.const 1072693248
    i32.add
    i64.extend_i32_u
    i64.const 32
    i64.shl
    f64.reinterpret_i64
    local.tee 7
    f64.mul
    f64.store offset=8
    local.get 0
    local.get 4
    call $cos
    local.get 3
    f64.mul
    local.get 6
    f64.mul
    local.get 7
    f64.mul
    f64.store)
  (func $cexp (type 8) (param i32 i32)
    (local i32 f64 f64 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    f64.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        f64.load offset=8
        local.tee 4
        i64.reinterpret_f64
        local.tee 5
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.const 2147483647
        i32.and
        local.tee 1
        local.get 5
        i32.wrap_i64
        i32.or
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        f64.store offset=8
        local.get 0
        local.get 3
        call $exp
        f64.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i64.reinterpret_f64
        local.tee 5
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee 6
        i32.const 2147483647
        i32.and
        local.tee 7
        local.get 5
        i32.wrap_i64
        local.tee 8
        i32.or
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        call $sin
        f64.store offset=8
        local.get 0
        local.get 4
        call $cos
        f64.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2146435072
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            br_if 0 (;@4;)
            local.get 7
            i32.const 2146435072
            i32.eq
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 4
          local.get 4
          f64.sub
          local.tee 4
          f64.store offset=8
          local.get 0
          local.get 4
          f64.store
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 6
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        f64.store
        local.get 0
        local.get 4
        local.get 4
        f64.sub
        f64.store offset=8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 6
        i32.const -1082535490
        i32.add
        i32.const 1084066
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        f64.store offset=24
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i64.load offset=24
        i64.store
        local.get 2
        local.get 3
        f64.store offset=16
        local.get 2
        local.get 2
        i64.load offset=16
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 0
        call $__ldexp_cexp
        local.get 0
        local.get 2
        i64.load offset=40
        i64.store offset=8
        local.get 0
        local.get 2
        i64.load offset=32
        i64.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      call $sin
      local.get 3
      call $exp
      local.tee 3
      f64.mul
      f64.store offset=8
      local.get 0
      local.get 3
      local.get 4
      call $cos
      f64.mul
      f64.store
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $__muldc3 (type 19) (param i32 f64 f64 f64 f64)
    (local f64 f64 f64 f64 f64 f64 f64 i32 i32)
    local.get 2
    local.get 3
    f64.mul
    local.tee 5
    local.get 1
    local.get 4
    f64.mul
    local.tee 6
    f64.add
    local.set 7
    block  ;; label = @1
      local.get 1
      local.get 3
      f64.mul
      local.tee 8
      local.get 2
      local.get 4
      f64.mul
      local.tee 9
      f64.sub
      local.tee 10
      local.get 10
      f64.eq
      br_if 0 (;@1;)
      local.get 7
      local.get 7
      f64.eq
      br_if 0 (;@1;)
      local.get 2
      f64.abs
      local.set 11
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          local.tee 12
          br_if 0 (;@3;)
          i32.const 0
          local.set 13
          local.get 11
          f64.const inf (;=inf;)
          f64.ne
          br_if 1 (;@2;)
        end
        f64.const 0x0p+0 (;=0;)
        local.get 4
        f64.copysign
        local.get 4
        local.get 4
        local.get 4
        f64.ne
        select
        local.set 4
        f64.const 0x0p+0 (;=0;)
        local.get 3
        f64.copysign
        local.get 3
        local.get 3
        local.get 3
        f64.ne
        select
        local.set 3
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 11
        f64.const inf (;=inf;)
        f64.eq
        select
        local.get 2
        f64.copysign
        local.set 2
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 12
        select
        local.get 1
        f64.copysign
        local.set 1
        i32.const 1
        local.set 13
      end
      local.get 3
      f64.abs
      local.set 11
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            f64.abs
            f64.const inf (;=inf;)
            f64.eq
            local.tee 12
            br_if 0 (;@4;)
            local.get 11
            f64.const inf (;=inf;)
            f64.ne
            br_if 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          local.get 2
          f64.copysign
          local.get 2
          local.get 2
          local.get 2
          f64.ne
          select
          local.set 2
          f64.const 0x0p+0 (;=0;)
          local.get 1
          f64.copysign
          local.get 1
          local.get 1
          local.get 1
          f64.ne
          select
          local.set 1
          f64.const 0x1p+0 (;=1;)
          f64.const 0x0p+0 (;=0;)
          local.get 12
          select
          local.get 4
          f64.copysign
          local.set 4
          f64.const 0x1p+0 (;=1;)
          f64.const 0x0p+0 (;=0;)
          local.get 11
          f64.const inf (;=inf;)
          f64.eq
          select
          local.get 3
          f64.copysign
          local.set 3
          br 1 (;@2;)
        end
        local.get 13
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 5
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 6
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 8
          f64.abs
          f64.const inf (;=inf;)
          f64.eq
          br_if 0 (;@3;)
          local.get 9
          f64.abs
          f64.const inf (;=inf;)
          f64.ne
          br_if 2 (;@1;)
        end
        f64.const 0x0p+0 (;=0;)
        local.get 4
        f64.copysign
        local.get 4
        local.get 4
        local.get 4
        f64.ne
        select
        local.set 4
        f64.const 0x0p+0 (;=0;)
        local.get 3
        f64.copysign
        local.get 3
        local.get 3
        local.get 3
        f64.ne
        select
        local.set 3
        f64.const 0x0p+0 (;=0;)
        local.get 2
        f64.copysign
        local.get 2
        local.get 2
        local.get 2
        f64.ne
        select
        local.set 2
        f64.const 0x0p+0 (;=0;)
        local.get 1
        f64.copysign
        local.get 1
        local.get 1
        local.get 1
        f64.ne
        select
        local.set 1
      end
      local.get 3
      local.get 2
      f64.mul
      local.get 4
      local.get 1
      f64.mul
      f64.add
      f64.const inf (;=inf;)
      f64.mul
      local.set 7
      local.get 3
      local.get 1
      f64.mul
      local.get 4
      local.get 2
      f64.mul
      f64.sub
      f64.const inf (;=inf;)
      f64.mul
      local.set 10
    end
    local.get 0
    local.get 7
    f64.store offset=8
    local.get 0
    local.get 10
    f64.store)
  (func $fminf (type 20) (param f32 f32) (result f32)
    block  ;; label = @1
      local.get 0
      local.get 0
      f32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 1
        f32.eq
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 0
      local.get 1
      f32.min
      local.set 1
    end
    local.get 1)
  (func $fmaxf (type 20) (param f32 f32) (result f32)
    block  ;; label = @1
      local.get 0
      local.get 0
      f32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 1
        f32.eq
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 0
      local.get 1
      f32.max
      local.set 1
    end
    local.get 1)
  (func $fmin (type 17) (param f64 f64) (result f64)
    block  ;; label = @1
      local.get 0
      local.get 0
      f64.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 1
        f64.eq
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 0
      local.get 1
      f64.min
      local.set 1
    end
    local.get 1)
  (func $fmax (type 17) (param f64 f64) (result f64)
    block  ;; label = @1
      local.get 0
      local.get 0
      f64.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 1
        f64.eq
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 0
      local.get 1
      f64.max
      local.set 1
    end
    local.get 1)
  (func $__divdc3 (type 19) (param i32 f64 f64 f64 f64)
    (local f64 i64 i32 f64 i64 f64 f64 f64 f64 f64 f64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f64.abs
        local.get 4
        f64.abs
        call $fmax
        local.tee 5
        i64.reinterpret_f64
        local.tee 6
        i64.const 52
        i64.shr_u
        i32.wrap_i64
        i32.const 2047
        i32.and
        local.tee 7
        i32.const 2047
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        local.get 5
        f64.neg
        local.get 6
        i64.const -1
        i64.gt_s
        select
        local.get 5
        local.get 5
        f64.ne
        select
        local.set 8
        br 1 (;@1;)
      end
      f64.const -inf (;=-inf;)
      local.set 8
      local.get 5
      f64.const 0x0p+0 (;=0;)
      f64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        i32.const -1023
        i32.add
        f64.convert_i32_s
        local.set 8
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i64.const 9223372036854775807
          i64.and
          local.tee 9
          i64.const 4294967296
          i64.lt_u
          br_if 0 (;@3;)
          local.get 9
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          i32.clz
          local.set 7
          br 1 (;@2;)
        end
        local.get 6
        i32.wrap_i64
        i32.clz
        i32.const 32
        i32.add
        local.set 7
      end
      local.get 9
      local.get 7
      i32.const -11
      i32.add
      i64.extend_i32_u
      i64.shl
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.get 7
      i32.sub
      i32.const -1012
      i32.add
      f64.convert_i32_s
      local.set 8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        f64.abs
        local.tee 10
        f64.const inf (;=inf;)
        f64.lt
        i32.const 1
        i32.xor
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 10
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.trunc_f64_s
          local.set 7
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 7
      end
      local.get 3
      i32.const 0
      local.get 7
      i32.sub
      local.tee 7
      call $scalbn
      local.set 3
      local.get 4
      local.get 7
      call $scalbn
      local.set 4
    end
    local.get 3
    local.get 1
    f64.mul
    local.get 4
    local.get 2
    f64.mul
    f64.add
    local.get 3
    local.get 3
    f64.mul
    local.get 4
    local.get 4
    f64.mul
    f64.add
    local.tee 11
    f64.div
    local.get 7
    call $scalbn
    local.set 5
    local.get 3
    local.get 2
    f64.mul
    local.get 4
    local.get 1
    f64.mul
    f64.sub
    local.get 11
    f64.div
    local.get 7
    call $scalbn
    local.set 12
    block  ;; label = @1
      local.get 5
      local.get 5
      f64.eq
      br_if 0 (;@1;)
      local.get 12
      local.get 12
      f64.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 11
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          local.get 1
          f64.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          f64.ne
          br_if 1 (;@2;)
        end
        f64.const inf (;=inf;)
        local.get 3
        f64.copysign
        local.tee 3
        local.get 2
        f64.mul
        local.set 12
        local.get 3
        local.get 1
        f64.mul
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      f64.abs
      local.set 11
      local.get 1
      f64.abs
      local.set 13
      local.get 4
      f64.abs
      local.set 14
      block  ;; label = @2
        local.get 3
        f64.abs
        local.tee 15
        f64.const inf (;=inf;)
        f64.lt
        i32.const 1
        i32.xor
        br_if 0 (;@2;)
        local.get 13
        f64.const inf (;=inf;)
        f64.eq
        local.get 11
        f64.const inf (;=inf;)
        f64.eq
        i32.or
        i32.eqz
        br_if 0 (;@2;)
        local.get 14
        f64.const inf (;=inf;)
        f64.lt
        i32.const 1
        i32.xor
        br_if 0 (;@2;)
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 11
        f64.const inf (;=inf;)
        f64.eq
        select
        local.get 2
        f64.copysign
        local.tee 5
        local.get 3
        f64.mul
        f64.const 0x1p+0 (;=1;)
        f64.const 0x0p+0 (;=0;)
        local.get 13
        f64.const inf (;=inf;)
        f64.eq
        select
        local.get 1
        f64.copysign
        local.tee 1
        local.get 4
        f64.mul
        f64.sub
        f64.const inf (;=inf;)
        f64.mul
        local.set 12
        local.get 1
        local.get 3
        f64.mul
        local.get 5
        local.get 4
        f64.mul
        f64.add
        f64.const inf (;=inf;)
        f64.mul
        local.set 5
        br 1 (;@1;)
      end
      local.get 11
      f64.const inf (;=inf;)
      f64.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 13
      f64.const inf (;=inf;)
      f64.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 8
      f64.const 0x0p+0 (;=0;)
      f64.gt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 10
      f64.const inf (;=inf;)
      f64.ne
      br_if 0 (;@1;)
      f64.const 0x1p+0 (;=1;)
      f64.const 0x0p+0 (;=0;)
      local.get 15
      f64.const inf (;=inf;)
      f64.eq
      select
      local.get 3
      f64.copysign
      local.tee 3
      local.get 2
      f64.mul
      f64.const 0x1p+0 (;=1;)
      f64.const 0x0p+0 (;=0;)
      local.get 14
      f64.const inf (;=inf;)
      f64.eq
      select
      local.get 4
      f64.copysign
      local.tee 4
      local.get 1
      f64.mul
      f64.sub
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.set 12
      local.get 3
      local.get 1
      f64.mul
      local.get 4
      local.get 2
      f64.mul
      f64.add
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.set 5
    end
    local.get 0
    local.get 12
    f64.store offset=8
    local.get 0
    local.get 5
    f64.store)
  (func $close (type 4) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call $__wasi_fd_close
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=1024
    i32.const -1)
  (func $__stdio_close (type 4) (param i32) (result i32)
    local.get 0
    i32.load offset=56
    call $close)
  (func $writev (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=1024
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=1024
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func $__stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 1
    i32.store offset=4
    i32.const 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 5
        local.get 0
        i32.load offset=56
        local.get 3
        i32.const 2
        call $writev
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get 4
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            local.get 1
            i32.load offset=4
            i32.sub
            local.set 6
            br 3 (;@1;)
          end
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          local.get 6
          local.get 1
          i32.load offset=4
          local.tee 7
          i32.gt_u
          local.tee 8
          select
          local.tee 1
          local.get 1
          i32.load
          local.get 6
          local.get 7
          i32.const 0
          local.get 8
          select
          i32.sub
          local.tee 7
          i32.add
          i32.store
          local.get 1
          local.get 1
          i32.load offset=4
          local.get 7
          i32.sub
          i32.store offset=4
          local.get 5
          local.get 6
          i32.sub
          local.set 5
          local.get 0
          i32.load offset=56
          local.get 1
          local.get 4
          local.get 8
          i32.sub
          local.tee 4
          call $writev
          local.tee 8
          local.set 6
          local.get 5
          local.get 8
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
      local.set 6
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 6)
  (func $__isatty (type 4) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 0
        br_if 0 (;@2;)
        i32.const 59
        local.set 0
        local.get 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 0
      local.get 0
      i32.store offset=1024
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 2)
  (func $__stdout_write (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 1
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      call $__isatty
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=64
    end
    local.get 0
    local.get 1
    local.get 2
    call $__stdio_write)
  (func $__lseek (type 1) (param i32 i64 i32) (result i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 70
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store offset=1024
        i64.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $__stdio_seek (type 1) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=56
    local.get 1
    local.get 2
    call $__lseek)
  (func $__ofl_lock (type 9) (result i32)
    i32.const 2568)
  (func $__ofl_unlock (type 7))
  (func $__stdio_exit (type 7)
    (local i32 i32 i32)
    block  ;; label = @1
      call $__ofl_lock
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 0)
          drop
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 1)
          drop
        end
        local.get 0
        i32.load offset=52
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=2572
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=10152
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=10272
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end)
  (func $__towrite (type 4) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=60
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
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__towrite_needs_stdio_exit (type 7)
    call $__stdio_exit)
  (func $__fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 4
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 5
      block  ;; label = @2
        local.get 2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
        local.get 0
        local.set 6
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 3
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 6
          local.get 1
          i32.add
          local.set 7
          local.get 6
          i32.const -1
          i32.add
          local.tee 8
          local.set 6
          local.get 7
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        i32.sub
        i32.const 1
        i32.add
        local.tee 5
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        local.tee 3
        local.get 5
        i32.lt_u
        local.tee 6
        br_if 1 (;@1;)
        local.get 0
        local.get 8
        local.get 1
        i32.add
        i32.const 1
        i32.add
        local.get 6
        select
        local.set 0
        local.get 1
        i32.const 0
        local.get 5
        local.get 6
        select
        i32.sub
        local.set 1
        local.get 2
        i32.load offset=20
        local.set 4
      end
      local.get 4
      local.get 0
      local.get 1
      call $memcpy
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 5
      local.get 1
      i32.add
      local.set 3
    end
    local.get 3)
  (func $fwrite (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.tee 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
        local.get 3
        call $__towrite
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 5
      end
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.load offset=20
        local.tee 6
        i32.sub
        local.get 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 4
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.set 5
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 4
          local.set 5
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.set 5
            br 2 (;@2;)
          end
          local.get 0
          local.get 5
          i32.add
          local.set 8
          local.get 5
          i32.const -1
          i32.add
          local.tee 9
          local.set 5
          local.get 8
          i32.const -2
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        local.get 9
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.tee 5
        local.get 9
        i32.lt_u
        local.tee 8
        br_if 1 (;@1;)
        local.get 0
        local.get 0
        local.get 9
        i32.add
        local.get 8
        select
        local.set 0
        local.get 4
        i32.const 0
        local.get 9
        local.get 8
        select
        i32.sub
        local.set 5
        local.get 3
        i32.load offset=20
        local.set 6
        local.get 9
        local.set 7
      end
      local.get 6
      local.get 0
      local.get 5
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load offset=20
      local.get 5
      i32.add
      i32.store offset=20
      local.get 7
      local.get 5
      i32.add
      local.set 5
    end
    block  ;; label = @1
      local.get 5
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 5
    local.get 1
    i32.div_u)
  (func $dummy.1 (type 3) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $__lctrans_cur (type 4) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=2608
      local.tee 1
      br_if 0 (;@1;)
      i32.const 2584
      local.set 1
      i32.const 0
      i32.const 2584
      i32.store offset=2608
    end
    local.get 0
    local.get 1
    i32.load offset=20
    call $dummy.1)
  (func $__strerror_l (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.const 7664
            i32.add
            i32.load8_u
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            i32.const 77
            local.set 3
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.const 77
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 2
        local.set 3
        local.get 2
        br_if 0 (;@2;)
        i32.const 7744
        local.set 4
        br 1 (;@1;)
      end
      i32.const 7744
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.load8_u
        local.set 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 4
        local.set 2
        local.get 0
        br_if 0 (;@2;)
        local.get 4
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 4
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $strerror (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=2608
      local.tee 2
      br_if 0 (;@1;)
      i32.const 2584
      local.set 2
      i32.const 0
      i32.const 2584
      i32.store offset=2608
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 7664
            i32.add
            i32.load8_u
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            i32.const 77
            local.set 3
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.const 77
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 1
        local.set 3
        local.get 1
        br_if 0 (;@2;)
        i32.const 7744
        local.set 4
        br 1 (;@1;)
      end
      i32.const 7744
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 4
        local.set 1
        local.get 0
        br_if 0 (;@2;)
        local.get 4
        local.set 1
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 4
    local.get 2
    i32.load offset=20
    call $__lctrans)
  (func $memchr (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 2
            local.set 4
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.set 4
            br 1 (;@3;)
          end
          local.get 1
          i32.const 255
          i32.and
          local.set 5
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.get 5
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.set 4
              br 3 (;@2;)
            end
            local.get 2
            i32.const 1
            i32.ne
            local.set 3
            local.get 2
            i32.const -1
            i32.add
            local.set 4
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 2
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 4
            local.set 2
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
        local.get 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 3
        loop  ;; label = @3
          local.get 0
          i32.load
          local.get 3
          i32.xor
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
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
          local.get 4
          i32.const -4
          i32.add
          local.tee 4
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 2
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $strnlen (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call $memchr
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func $wcrtomb (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=2584
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i32.const 25
            i32.store offset=1024
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.gt_u
          br_if 0 (;@3;)
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
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 55296
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if 1 (;@3;)
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
        block  ;; label = @3
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if 0 (;@3;)
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
        i32.const 0
        i32.const 25
        i32.store offset=1024
      end
      i32.const -1
      local.set 3
    end
    local.get 3)
  (func $wctomb (type 3) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call $wcrtomb)
  (func $frexp (type 14) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store
          local.get 0
          return
        end
        local.get 0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get 1
        call $frexp
        local.set 0
        local.get 1
        local.get 1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func $strlen (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.sub
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        local.get 1
        i32.const -4
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.and
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.sub
          return
        end
        loop  ;; label = @3
          local.get 1
          i32.load8_u offset=1
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 3
          local.set 1
          local.get 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const -1
      i32.add
      local.set 3
    end
    local.get 3
    local.get 0
    i32.sub)
  (func $fputs (type 3) (param i32 i32) (result i32)
    (local i32)
    i32.const -1
    i32.const 0
    local.get 0
    call $strlen
    local.tee 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call $fwrite
    i32.ne
    select)
  (func $vfprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=204
    local.get 3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    local.get 2
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load offset=60
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=44
              br_if 0 (;@5;)
              local.get 0
              i32.const 80
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=40
              local.set 5
              local.get 0
              local.get 3
              i32.store offset=40
              br 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call $__towrite
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        local.set 2
      end
      local.get 4
      i32.const 32
      i32.and
      local.set 1
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 5
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 2
        i32.const -1
        local.get 5
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 5
      local.get 1
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 5
      i32.const 32
      i32.and
      select
      local.set 0
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0
    local.get 0)
  (func $printf_core (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 i32 i32 f64 i32 i32 i32 i32)
    global.get 0
    i32.const 880
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 336
    i32.add
    i32.const 8
    i32.or
    local.set 6
    local.get 5
    i32.const 55
    i32.add
    local.set 7
    i32.const -2
    local.get 5
    i32.const 336
    i32.add
    i32.sub
    local.set 8
    local.get 5
    i32.const 336
    i32.add
    i32.const 9
    i32.or
    local.set 9
    local.get 5
    i32.const 656
    i32.add
    local.set 10
    local.get 5
    i32.const 324
    i32.add
    i32.const 12
    i32.add
    local.set 11
    i32.const 0
    local.get 5
    i32.const 336
    i32.add
    i32.sub
    local.set 12
    local.get 5
    i32.const 56
    i32.add
    local.set 13
    i32.const 0
    local.set 14
    i32.const 0
    local.set 15
    i32.const 0
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.set 17
            local.get 16
            i32.const 2147483647
            local.get 15
            i32.sub
            i32.gt_s
            br_if 1 (;@3;)
            local.get 16
            local.get 15
            i32.add
            local.set 15
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 17
                    i32.load8_u
                    local.tee 16
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 17
                    local.set 1
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 16
                            i32.const 255
                            i32.and
                            local.tee 16
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 16
                            i32.const 37
                            i32.ne
                            br_if 2 (;@10;)
                            local.get 1
                            local.set 18
                            local.get 1
                            local.set 16
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 16
                                i32.const 1
                                i32.add
                                i32.load8_u
                                i32.const 37
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 16
                                local.set 1
                                br 3 (;@11;)
                              end
                              local.get 18
                              i32.const 1
                              i32.add
                              local.set 18
                              local.get 16
                              i32.load8_u offset=2
                              local.set 19
                              local.get 16
                              i32.const 2
                              i32.add
                              local.tee 1
                              local.set 16
                              local.get 19
                              i32.const 37
                              i32.eq
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 1
                          local.set 18
                        end
                        local.get 18
                        local.get 17
                        i32.sub
                        local.tee 16
                        i32.const 2147483647
                        local.get 15
                        i32.sub
                        local.tee 18
                        i32.gt_s
                        br_if 7 (;@3;)
                        block  ;; label = @11
                          local.get 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 17
                          local.get 16
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 16
                        br_if 6 (;@4;)
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 16
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load8_s offset=1
                            local.tee 20
                            i32.const -48
                            i32.add
                            local.tee 21
                            i32.const 9
                            i32.le_u
                            br_if 0 (;@12;)
                            i32.const -1
                            local.set 22
                            br 1 (;@11;)
                          end
                          local.get 1
                          i32.const 3
                          i32.add
                          local.get 16
                          local.get 1
                          i32.load8_u offset=2
                          i32.const 36
                          i32.eq
                          local.tee 19
                          select
                          local.set 16
                          local.get 21
                          i32.const -1
                          local.get 19
                          select
                          local.set 22
                          i32.const 1
                          local.get 14
                          local.get 19
                          select
                          local.set 14
                          local.get 1
                          i32.const 3
                          i32.const 1
                          local.get 19
                          select
                          i32.add
                          i32.load8_s
                          local.set 20
                        end
                        i32.const 0
                        local.set 23
                        block  ;; label = @11
                          local.get 20
                          i32.const -32
                          i32.add
                          local.tee 1
                          i32.const 31
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 1
                          local.get 1
                          i32.shl
                          local.tee 1
                          i32.const 75913
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 16
                          i32.const 1
                          i32.add
                          local.set 19
                          i32.const 0
                          local.set 23
                          loop  ;; label = @12
                            local.get 1
                            local.get 23
                            i32.or
                            local.set 23
                            local.get 19
                            local.tee 16
                            i32.load8_s
                            local.tee 20
                            i32.const -32
                            i32.add
                            local.tee 1
                            i32.const 32
                            i32.ge_u
                            br_if 1 (;@11;)
                            local.get 16
                            i32.const 1
                            i32.add
                            local.set 19
                            i32.const 1
                            local.get 1
                            i32.shl
                            local.tee 1
                            i32.const 75913
                            i32.and
                            br_if 0 (;@12;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 20
                            i32.const 42
                            i32.ne
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 16
                                i32.load8_s offset=1
                                i32.const -48
                                i32.add
                                local.tee 1
                                i32.const 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 16
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 1
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 10
                                i32.store
                                local.get 16
                                i32.const 3
                                i32.add
                                local.set 24
                                local.get 16
                                i32.load8_s offset=1
                                i32.const 3
                                i32.shl
                                local.get 3
                                i32.add
                                i32.const -384
                                i32.add
                                i32.load
                                local.set 21
                                i32.const 1
                                local.set 14
                                br 1 (;@13;)
                              end
                              local.get 14
                              br_if 6 (;@7;)
                              local.get 16
                              i32.const 1
                              i32.add
                              local.set 24
                              block  ;; label = @14
                                local.get 0
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 14
                                i32.const 0
                                local.set 21
                                br 3 (;@11;)
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
                              local.set 21
                              i32.const 0
                              local.set 14
                            end
                            local.get 21
                            i32.const -1
                            i32.gt_s
                            br_if 1 (;@11;)
                            i32.const 0
                            local.get 21
                            i32.sub
                            local.set 21
                            local.get 23
                            i32.const 8192
                            i32.or
                            local.set 23
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 21
                          block  ;; label = @12
                            local.get 20
                            i32.const -48
                            i32.add
                            local.tee 19
                            i32.const 9
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 16
                            local.set 24
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 1
                          loop  ;; label = @12
                            i32.const -1
                            local.set 21
                            block  ;; label = @13
                              local.get 1
                              i32.const 214748364
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const -1
                              local.get 1
                              i32.const 10
                              i32.mul
                              local.tee 1
                              local.get 19
                              i32.add
                              local.get 19
                              i32.const 2147483647
                              local.get 1
                              i32.sub
                              i32.gt_s
                              select
                              local.set 21
                            end
                            local.get 16
                            i32.load8_s offset=1
                            local.set 19
                            local.get 16
                            i32.const 1
                            i32.add
                            local.tee 24
                            local.set 16
                            local.get 21
                            local.set 1
                            local.get 19
                            i32.const -48
                            i32.add
                            local.tee 19
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          local.get 21
                          i32.const 0
                          i32.lt_s
                          br_if 8 (;@3;)
                        end
                        i32.const 0
                        local.set 16
                        i32.const -1
                        local.set 20
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 24
                            i32.load8_u
                            i32.const 46
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 24
                            local.set 1
                            i32.const 0
                            local.set 25
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 24
                            i32.load8_s offset=1
                            local.tee 19
                            i32.const 42
                            i32.ne
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 24
                                i32.load8_s offset=2
                                i32.const -48
                                i32.add
                                local.tee 1
                                i32.const 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 24
                                i32.load8_u offset=3
                                i32.const 36
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 1
                                i32.const 2
                                i32.shl
                                i32.add
                                i32.const 10
                                i32.store
                                local.get 24
                                i32.const 4
                                i32.add
                                local.set 1
                                local.get 24
                                i32.load8_s offset=2
                                i32.const 3
                                i32.shl
                                local.get 3
                                i32.add
                                i32.const -384
                                i32.add
                                i32.load
                                local.set 20
                                br 1 (;@13;)
                              end
                              local.get 14
                              br_if 6 (;@7;)
                              local.get 24
                              i32.const 2
                              i32.add
                              local.set 1
                              block  ;; label = @14
                                local.get 0
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 20
                                br 1 (;@13;)
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              local.tee 19
                              i32.const 4
                              i32.add
                              i32.store
                              local.get 19
                              i32.load
                              local.set 20
                            end
                            local.get 20
                            i32.const -1
                            i32.xor
                            i32.const 31
                            i32.shr_u
                            local.set 25
                            br 1 (;@11;)
                          end
                          local.get 24
                          i32.const 1
                          i32.add
                          local.set 1
                          block  ;; label = @12
                            local.get 19
                            i32.const -48
                            i32.add
                            local.tee 26
                            i32.const 9
                            i32.le_u
                            br_if 0 (;@12;)
                            i32.const 1
                            local.set 25
                            i32.const 0
                            local.set 20
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 24
                          local.get 1
                          local.set 19
                          loop  ;; label = @12
                            i32.const -1
                            local.set 20
                            block  ;; label = @13
                              local.get 24
                              i32.const 214748364
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const -1
                              local.get 24
                              i32.const 10
                              i32.mul
                              local.tee 1
                              local.get 26
                              i32.add
                              local.get 26
                              i32.const 2147483647
                              local.get 1
                              i32.sub
                              i32.gt_s
                              select
                              local.set 20
                            end
                            i32.const 1
                            local.set 25
                            local.get 19
                            i32.load8_s offset=1
                            local.set 26
                            local.get 19
                            i32.const 1
                            i32.add
                            local.tee 1
                            local.set 19
                            local.get 20
                            local.set 24
                            local.get 26
                            i32.const -48
                            i32.add
                            local.tee 26
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                        end
                        loop  ;; label = @11
                          local.get 16
                          local.set 19
                          local.get 1
                          i32.load8_s
                          i32.const -65
                          i32.add
                          local.tee 16
                          i32.const 57
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 1
                          i32.const 1
                          i32.add
                          local.set 1
                          local.get 19
                          i32.const 58
                          i32.mul
                          local.get 16
                          i32.add
                          i32.const 9344
                          i32.add
                          i32.load8_u
                          local.tee 16
                          i32.const -1
                          i32.add
                          i32.const 8
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        local.get 16
                        i32.eqz
                        br_if 3 (;@7;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 16
                                i32.const 27
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 22
                                i32.const -1
                                i32.le_s
                                br_if 1 (;@13;)
                                br 7 (;@7;)
                              end
                              local.get 22
                              i32.const 0
                              i32.lt_s
                              br_if 1 (;@12;)
                              local.get 4
                              local.get 22
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 16
                              i32.store
                              local.get 5
                              local.get 3
                              local.get 22
                              i32.const 3
                              i32.shl
                              i32.add
                              i64.load
                              i64.store offset=56
                            end
                            i32.const 0
                            local.set 16
                            local.get 0
                            i32.eqz
                            br_if 8 (;@4;)
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 0
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 15
                            br 11 (;@1;)
                          end
                          local.get 5
                          i32.const 56
                          i32.add
                          local.get 16
                          local.get 2
                          call $pop_arg
                        end
                        local.get 23
                        i32.const -65537
                        i32.and
                        local.tee 24
                        local.get 23
                        local.get 23
                        i32.const 8192
                        i32.and
                        select
                        local.set 22
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const -1
                              i32.add
                              i32.load8_s
                              local.tee 16
                              i32.const -33
                              i32.and
                              local.get 16
                              local.get 16
                              i32.const 15
                              i32.and
                              i32.const 3
                              i32.eq
                              select
                              local.get 16
                              local.get 19
                              select
                              local.tee 27
                              i32.const -65
                              i32.add
                              local.tee 16
                              i32.const 55
                              i32.gt_u
                              br_if 0 (;@13;)
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
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 16
                                                                br_table 16 (;@14;) 17 (;@13;) 13 (;@17;) 17 (;@13;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 12 (;@18;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 3 (;@27;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 16 (;@14;) 17 (;@13;) 8 (;@22;) 5 (;@25;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 17 (;@13;) 5 (;@25;) 17 (;@13;) 17 (;@13;) 17 (;@13;) 9 (;@21;) 1 (;@29;) 4 (;@26;) 2 (;@28;) 17 (;@13;) 17 (;@13;) 10 (;@20;) 17 (;@13;) 0 (;@30;) 17 (;@13;) 17 (;@13;) 3 (;@27;) 16 (;@14;)
                                                              end
                                                              i32.const 0
                                                              local.set 28
                                                              i32.const 9324
                                                              local.set 29
                                                              local.get 5
                                                              i64.load offset=56
                                                              local.set 30
                                                              br 5 (;@24;)
                                                            end
                                                            i32.const 0
                                                            local.set 16
                                                            local.get 19
                                                            i32.const 255
                                                            i32.and
                                                            local.tee 18
                                                            i32.const 7
                                                            i32.gt_u
                                                            br_if 24 (;@4;)
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          local.get 18
                                                                          br_table 0 (;@35;) 1 (;@34;) 2 (;@33;) 3 (;@32;) 4 (;@31;) 31 (;@4;) 5 (;@30;) 6 (;@29;) 0 (;@35;)
                                                                        end
                                                                        local.get 5
                                                                        i32.load offset=56
                                                                        local.get 15
                                                                        i32.store
                                                                        br 30 (;@4;)
                                                                      end
                                                                      local.get 5
                                                                      i32.load offset=56
                                                                      local.get 15
                                                                      i32.store
                                                                      br 29 (;@4;)
                                                                    end
                                                                    local.get 5
                                                                    i32.load offset=56
                                                                    local.get 15
                                                                    i64.extend_i32_s
                                                                    i64.store
                                                                    br 28 (;@4;)
                                                                  end
                                                                  local.get 5
                                                                  i32.load offset=56
                                                                  local.get 15
                                                                  i32.store16
                                                                  br 27 (;@4;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=56
                                                                local.get 15
                                                                i32.store8
                                                                br 26 (;@4;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=56
                                                              local.get 15
                                                              i32.store
                                                              br 25 (;@4;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=56
                                                            local.get 15
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br 24 (;@4;)
                                                          end
                                                          local.get 20
                                                          i32.const 8
                                                          local.get 20
                                                          i32.const 8
                                                          i32.gt_u
                                                          select
                                                          local.set 20
                                                          local.get 22
                                                          i32.const 8
                                                          i32.or
                                                          local.set 22
                                                          i32.const 120
                                                          local.set 27
                                                        end
                                                        i32.const 0
                                                        local.set 28
                                                        i32.const 9324
                                                        local.set 29
                                                        block  ;; label = @27
                                                          local.get 5
                                                          i64.load offset=56
                                                          local.tee 30
                                                          i64.eqz
                                                          i32.eqz
                                                          br_if 0 (;@27;)
                                                          local.get 13
                                                          local.set 17
                                                          br 4 (;@23;)
                                                        end
                                                        local.get 27
                                                        i32.const 32
                                                        i32.and
                                                        local.set 16
                                                        local.get 13
                                                        local.set 17
                                                        loop  ;; label = @27
                                                          local.get 17
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 17
                                                          local.get 30
                                                          i32.wrap_i64
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 9952
                                                          i32.add
                                                          i32.load8_u
                                                          local.get 16
                                                          i32.or
                                                          i32.store8
                                                          local.get 30
                                                          i64.const 4
                                                          i64.shr_u
                                                          local.tee 30
                                                          i64.const 0
                                                          i64.ne
                                                          br_if 0 (;@27;)
                                                        end
                                                        local.get 22
                                                        i32.const 8
                                                        i32.and
                                                        i32.eqz
                                                        br_if 3 (;@23;)
                                                        local.get 5
                                                        i64.load offset=56
                                                        i64.eqz
                                                        br_if 3 (;@23;)
                                                        local.get 27
                                                        i32.const 4
                                                        i32.shr_s
                                                        i32.const 9324
                                                        i32.add
                                                        local.set 29
                                                        i32.const 2
                                                        local.set 28
                                                        br 3 (;@23;)
                                                      end
                                                      local.get 13
                                                      local.set 17
                                                      block  ;; label = @26
                                                        local.get 5
                                                        i64.load offset=56
                                                        local.tee 30
                                                        i64.eqz
                                                        br_if 0 (;@26;)
                                                        local.get 13
                                                        local.set 17
                                                        loop  ;; label = @27
                                                          local.get 17
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 17
                                                          local.get 30
                                                          i32.wrap_i64
                                                          i32.const 7
                                                          i32.and
                                                          i32.const 48
                                                          i32.or
                                                          i32.store8
                                                          local.get 30
                                                          i64.const 3
                                                          i64.shr_u
                                                          local.tee 30
                                                          i64.const 0
                                                          i64.ne
                                                          br_if 0 (;@27;)
                                                        end
                                                      end
                                                      i32.const 0
                                                      local.set 28
                                                      i32.const 9324
                                                      local.set 29
                                                      local.get 22
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      br_if 2 (;@23;)
                                                      local.get 20
                                                      local.get 13
                                                      local.get 17
                                                      i32.sub
                                                      local.tee 16
                                                      i32.const 1
                                                      i32.add
                                                      local.get 20
                                                      local.get 16
                                                      i32.gt_s
                                                      select
                                                      local.set 20
                                                      br 2 (;@23;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i64.load offset=56
                                                      local.tee 30
                                                      i64.const -1
                                                      i64.gt_s
                                                      br_if 0 (;@25;)
                                                      local.get 5
                                                      i64.const 0
                                                      local.get 30
                                                      i64.sub
                                                      local.tee 30
                                                      i64.store offset=56
                                                      i32.const 1
                                                      local.set 28
                                                      i32.const 9324
                                                      local.set 29
                                                      br 1 (;@24;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 22
                                                      i32.const 2048
                                                      i32.and
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      i32.const 1
                                                      local.set 28
                                                      i32.const 9325
                                                      local.set 29
                                                      br 1 (;@24;)
                                                    end
                                                    i32.const 9326
                                                    i32.const 9324
                                                    local.get 22
                                                    i32.const 1
                                                    i32.and
                                                    local.tee 28
                                                    select
                                                    local.set 29
                                                  end
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 30
                                                      i64.const 4294967296
                                                      i64.ge_u
                                                      br_if 0 (;@25;)
                                                      local.get 30
                                                      local.set 31
                                                      local.get 13
                                                      local.set 17
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 13
                                                    local.set 17
                                                    loop  ;; label = @25
                                                      local.get 17
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 17
                                                      local.get 30
                                                      local.get 30
                                                      i64.const 10
                                                      i64.div_u
                                                      local.tee 31
                                                      i64.const 10
                                                      i64.mul
                                                      i64.sub
                                                      i32.wrap_i64
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get 30
                                                      i64.const 42949672959
                                                      i64.gt_u
                                                      local.set 16
                                                      local.get 31
                                                      local.set 30
                                                      local.get 16
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  local.get 31
                                                  i32.wrap_i64
                                                  local.tee 16
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  loop  ;; label = @24
                                                    local.get 17
                                                    i32.const -1
                                                    i32.add
                                                    local.tee 17
                                                    local.get 16
                                                    local.get 16
                                                    i32.const 10
                                                    i32.div_u
                                                    local.tee 19
                                                    i32.const 10
                                                    i32.mul
                                                    i32.sub
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get 16
                                                    i32.const 9
                                                    i32.gt_u
                                                    local.set 23
                                                    local.get 19
                                                    local.set 16
                                                    local.get 23
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                block  ;; label = @23
                                                  local.get 25
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 20
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if 20 (;@3;)
                                                end
                                                local.get 22
                                                i32.const -65537
                                                i32.and
                                                local.get 22
                                                local.get 25
                                                select
                                                local.set 22
                                                local.get 5
                                                i64.load offset=56
                                                local.set 30
                                                block  ;; label = @23
                                                  local.get 20
                                                  br_if 0 (;@23;)
                                                  local.get 30
                                                  i64.eqz
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 13
                                                  local.set 17
                                                  local.get 13
                                                  local.set 16
                                                  i32.const 0
                                                  local.set 20
                                                  br 18 (;@5;)
                                                end
                                                local.get 20
                                                local.get 13
                                                local.get 17
                                                i32.sub
                                                local.get 30
                                                i64.eqz
                                                i32.add
                                                local.tee 16
                                                local.get 20
                                                local.get 16
                                                i32.gt_s
                                                select
                                                local.set 20
                                                br 10 (;@12;)
                                              end
                                              local.get 5
                                              local.get 5
                                              i64.load offset=56
                                              i64.store8 offset=55
                                              i32.const 0
                                              local.set 28
                                              i32.const 9324
                                              local.set 29
                                              i32.const 1
                                              local.set 20
                                              local.get 7
                                              local.set 17
                                              local.get 13
                                              local.set 16
                                              local.get 24
                                              local.set 22
                                              br 16 (;@5;)
                                            end
                                            i32.const 0
                                            i32.load offset=1024
                                            call $strerror
                                            local.set 17
                                            br 1 (;@19;)
                                          end
                                          local.get 5
                                          i32.load offset=56
                                          local.tee 16
                                          i32.const 9334
                                          local.get 16
                                          select
                                          local.set 17
                                        end
                                        i32.const 0
                                        local.set 28
                                        local.get 17
                                        local.get 17
                                        i32.const 2147483647
                                        local.get 20
                                        local.get 20
                                        i32.const 0
                                        i32.lt_s
                                        select
                                        call $strnlen
                                        local.tee 19
                                        i32.add
                                        local.set 16
                                        i32.const 9324
                                        local.set 29
                                        local.get 20
                                        i32.const -1
                                        i32.le_s
                                        br_if 7 (;@11;)
                                        local.get 24
                                        local.set 22
                                        local.get 19
                                        local.set 20
                                        br 13 (;@5;)
                                      end
                                      local.get 5
                                      i32.load offset=56
                                      local.set 17
                                      local.get 20
                                      br_if 1 (;@16;)
                                      i32.const 0
                                      local.set 16
                                      br 2 (;@15;)
                                    end
                                    local.get 5
                                    i32.const 0
                                    i32.store offset=12
                                    local.get 5
                                    local.get 5
                                    i64.load offset=56
                                    i64.store32 offset=8
                                    local.get 5
                                    local.get 5
                                    i32.const 8
                                    i32.add
                                    i32.store offset=56
                                    i32.const -1
                                    local.set 20
                                    local.get 5
                                    i32.const 8
                                    i32.add
                                    local.set 17
                                  end
                                  i32.const 0
                                  local.set 16
                                  local.get 17
                                  local.set 18
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 18
                                      i32.load
                                      local.tee 19
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      block  ;; label = @18
                                        local.get 5
                                        i32.const 4
                                        i32.add
                                        local.get 19
                                        call $wctomb
                                        local.tee 19
                                        i32.const 0
                                        i32.lt_s
                                        local.tee 23
                                        br_if 0 (;@18;)
                                        local.get 19
                                        local.get 20
                                        local.get 16
                                        i32.sub
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.const 4
                                        i32.add
                                        local.set 18
                                        local.get 20
                                        local.get 19
                                        local.get 16
                                        i32.add
                                        local.tee 16
                                        i32.gt_u
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 23
                                    br_if 14 (;@2;)
                                  end
                                  local.get 16
                                  i32.const 0
                                  i32.lt_s
                                  br_if 12 (;@3;)
                                end
                                block  ;; label = @15
                                  local.get 22
                                  i32.const 73728
                                  i32.and
                                  local.tee 24
                                  br_if 0 (;@15;)
                                  local.get 21
                                  local.get 16
                                  i32.le_s
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get 21
                                  local.get 16
                                  i32.sub
                                  local.tee 26
                                  i32.const 256
                                  local.get 26
                                  i32.const 256
                                  i32.lt_u
                                  local.tee 18
                                  select
                                  call $memset
                                  drop
                                  local.get 0
                                  i32.load
                                  local.tee 20
                                  i32.const 32
                                  i32.and
                                  local.set 19
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 18
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.eqz
                                      local.set 18
                                      local.get 26
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 18
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get 0
                                          call $__fwritex
                                          drop
                                          local.get 0
                                          i32.load
                                          local.set 20
                                        end
                                        local.get 20
                                        i32.const 32
                                        i32.and
                                        local.tee 23
                                        i32.eqz
                                        local.set 18
                                        local.get 19
                                        i32.const -256
                                        i32.add
                                        local.tee 19
                                        i32.const 255
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 23
                                      br_if 2 (;@15;)
                                      local.get 26
                                      i32.const 255
                                      i32.and
                                      local.set 26
                                      br 1 (;@16;)
                                    end
                                    local.get 19
                                    br_if 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  local.get 26
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                block  ;; label = @15
                                  local.get 16
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 18
                                  loop  ;; label = @16
                                    local.get 17
                                    i32.load
                                    local.tee 19
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.get 19
                                    call $wctomb
                                    local.tee 19
                                    local.get 18
                                    i32.add
                                    local.tee 18
                                    local.get 16
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load8_u
                                      i32.const 32
                                      i32.and
                                      br_if 0 (;@17;)
                                      local.get 5
                                      i32.const 4
                                      i32.add
                                      local.get 19
                                      local.get 0
                                      call $__fwritex
                                      drop
                                    end
                                    local.get 17
                                    i32.const 4
                                    i32.add
                                    local.set 17
                                    local.get 18
                                    local.get 16
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                block  ;; label = @15
                                  local.get 24
                                  i32.const 8192
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 21
                                  local.get 16
                                  i32.le_s
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get 21
                                  local.get 16
                                  i32.sub
                                  local.tee 23
                                  i32.const 256
                                  local.get 23
                                  i32.const 256
                                  i32.lt_u
                                  local.tee 18
                                  select
                                  call $memset
                                  drop
                                  local.get 0
                                  i32.load
                                  local.tee 17
                                  i32.const 32
                                  i32.and
                                  local.set 19
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 18
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.eqz
                                      local.set 18
                                      local.get 23
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 18
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get 0
                                          call $__fwritex
                                          drop
                                          local.get 0
                                          i32.load
                                          local.set 17
                                        end
                                        local.get 17
                                        i32.const 32
                                        i32.and
                                        local.tee 20
                                        i32.eqz
                                        local.set 18
                                        local.get 19
                                        i32.const -256
                                        i32.add
                                        local.tee 19
                                        i32.const 255
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 20
                                      br_if 2 (;@15;)
                                      local.get 23
                                      i32.const 255
                                      i32.and
                                      local.set 23
                                      br 1 (;@16;)
                                    end
                                    local.get 19
                                    br_if 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  local.get 23
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 21
                                local.get 16
                                local.get 21
                                local.get 16
                                i32.gt_s
                                select
                                local.set 16
                                br 10 (;@4;)
                              end
                              block  ;; label = @14
                                local.get 20
                                i32.const -1
                                i32.gt_s
                                br_if 0 (;@14;)
                                local.get 25
                                br_if 11 (;@3;)
                              end
                              local.get 5
                              f64.load offset=56
                              local.set 32
                              local.get 5
                              i32.const 0
                              i32.store offset=364
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 32
                                  i64.reinterpret_f64
                                  i64.const -1
                                  i64.gt_s
                                  br_if 0 (;@15;)
                                  local.get 32
                                  f64.neg
                                  local.set 32
                                  i32.const 1
                                  local.set 33
                                  i32.const 9968
                                  local.set 34
                                  br 1 (;@14;)
                                end
                                block  ;; label = @15
                                  local.get 22
                                  i32.const 2048
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 1
                                  local.set 33
                                  i32.const 9971
                                  local.set 34
                                  br 1 (;@14;)
                                end
                                i32.const 9974
                                i32.const 9969
                                local.get 22
                                i32.const 1
                                i32.and
                                local.tee 33
                                select
                                local.set 34
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 32
                                  f64.abs
                                  local.tee 35
                                  f64.const inf (;=inf;)
                                  f64.ne
                                  local.get 35
                                  local.get 35
                                  f64.eq
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 33
                                  i32.const 3
                                  i32.add
                                  local.set 20
                                  block  ;; label = @16
                                    local.get 22
                                    i32.const 8192
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 21
                                    local.get 20
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get 21
                                    local.get 20
                                    i32.sub
                                    local.tee 23
                                    i32.const 256
                                    local.get 23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 23
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 23
                                        i32.const 255
                                        i32.and
                                        local.set 23
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 23
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load
                                    local.tee 16
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 34
                                    local.get 33
                                    local.get 0
                                    call $__fwritex
                                    drop
                                    local.get 0
                                    i32.load
                                    local.set 16
                                  end
                                  block  ;; label = @16
                                    local.get 16
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 9995
                                    i32.const 9999
                                    local.get 27
                                    i32.const 32
                                    i32.and
                                    i32.const 5
                                    i32.shr_u
                                    local.tee 16
                                    select
                                    i32.const 9987
                                    i32.const 9991
                                    local.get 16
                                    select
                                    local.get 32
                                    local.get 32
                                    f64.ne
                                    select
                                    i32.const 3
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 22
                                    i32.const 73728
                                    i32.and
                                    i32.const 8192
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 21
                                    local.get 20
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get 21
                                    local.get 20
                                    i32.sub
                                    local.tee 23
                                    i32.const 256
                                    local.get 23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 23
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 23
                                        i32.const 255
                                        i32.and
                                        local.set 23
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 23
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  local.get 20
                                  local.get 21
                                  local.get 20
                                  i32.gt_s
                                  select
                                  local.set 16
                                  br 1 (;@14;)
                                end
                                block  ;; label = @15
                                  local.get 32
                                  local.get 5
                                  i32.const 364
                                  i32.add
                                  call $frexp
                                  local.tee 32
                                  local.get 32
                                  f64.add
                                  local.tee 32
                                  f64.const 0x0p+0 (;=0;)
                                  f64.eq
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 5
                                  i32.load offset=364
                                  i32.const -1
                                  i32.add
                                  i32.store offset=364
                                end
                                block  ;; label = @15
                                  local.get 27
                                  i32.const 32
                                  i32.or
                                  local.tee 36
                                  i32.const 97
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 34
                                  i32.const 9
                                  i32.add
                                  local.get 34
                                  local.get 27
                                  i32.const 32
                                  i32.and
                                  local.tee 23
                                  select
                                  local.set 28
                                  block  ;; label = @16
                                    local.get 20
                                    i32.const 11
                                    i32.gt_u
                                    local.get 20
                                    i32.const 12
                                    i32.eq
                                    i32.or
                                    br_if 0 (;@16;)
                                    local.get 20
                                    i32.const -12
                                    i32.add
                                    local.set 16
                                    f64.const 0x1p+4 (;=16;)
                                    local.set 35
                                    loop  ;; label = @17
                                      local.get 35
                                      f64.const 0x1p+4 (;=16;)
                                      f64.mul
                                      local.set 35
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.tee 18
                                      local.get 16
                                      i32.ge_u
                                      local.set 19
                                      local.get 18
                                      local.set 16
                                      local.get 19
                                      br_if 0 (;@17;)
                                    end
                                    block  ;; label = @17
                                      local.get 28
                                      i32.load8_u
                                      i32.const 45
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 35
                                      local.get 32
                                      f64.neg
                                      local.get 35
                                      f64.sub
                                      f64.add
                                      f64.neg
                                      local.set 32
                                      br 1 (;@16;)
                                    end
                                    local.get 32
                                    local.get 35
                                    f64.add
                                    local.get 35
                                    f64.sub
                                    local.set 32
                                  end
                                  local.get 11
                                  local.set 19
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load offset=364
                                      local.tee 24
                                      local.get 24
                                      i32.const 31
                                      i32.shr_s
                                      local.tee 16
                                      i32.add
                                      local.get 16
                                      i32.xor
                                      local.tee 16
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 18
                                      loop  ;; label = @18
                                        local.get 5
                                        i32.const 324
                                        i32.add
                                        local.get 18
                                        i32.add
                                        i32.const 11
                                        i32.add
                                        local.get 16
                                        local.get 16
                                        i32.const 10
                                        i32.div_u
                                        local.tee 19
                                        i32.const 10
                                        i32.mul
                                        i32.sub
                                        i32.const 48
                                        i32.or
                                        i32.store8
                                        local.get 18
                                        i32.const -1
                                        i32.add
                                        local.set 18
                                        local.get 16
                                        i32.const 9
                                        i32.gt_u
                                        local.set 17
                                        local.get 19
                                        local.set 16
                                        local.get 17
                                        br_if 0 (;@18;)
                                      end
                                      local.get 5
                                      i32.const 324
                                      i32.add
                                      local.get 18
                                      i32.add
                                      i32.const 12
                                      i32.add
                                      local.set 19
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 19
                                    i32.const -1
                                    i32.add
                                    local.tee 19
                                    i32.const 48
                                    i32.store8
                                  end
                                  local.get 33
                                  i32.const 2
                                  i32.or
                                  local.set 26
                                  local.get 19
                                  i32.const -2
                                  i32.add
                                  local.tee 25
                                  local.get 27
                                  i32.const 15
                                  i32.add
                                  i32.store8
                                  local.get 19
                                  i32.const -1
                                  i32.add
                                  i32.const 45
                                  i32.const 43
                                  local.get 24
                                  i32.const 0
                                  i32.lt_s
                                  select
                                  i32.store8
                                  local.get 22
                                  i32.const 8
                                  i32.and
                                  local.set 19
                                  local.get 5
                                  i32.const 336
                                  i32.add
                                  local.set 18
                                  loop  ;; label = @16
                                    local.get 18
                                    local.set 16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 32
                                        f64.abs
                                        f64.const 0x1p+31 (;=2.14748e+09;)
                                        f64.lt
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 32
                                        i32.trunc_f64_s
                                        local.set 18
                                        br 1 (;@17;)
                                      end
                                      i32.const -2147483648
                                      local.set 18
                                    end
                                    local.get 16
                                    local.get 18
                                    i32.const 9952
                                    i32.add
                                    i32.load8_u
                                    local.get 23
                                    i32.or
                                    i32.store8
                                    local.get 32
                                    local.get 18
                                    f64.convert_i32_s
                                    f64.sub
                                    f64.const 0x1p+4 (;=16;)
                                    f64.mul
                                    local.set 32
                                    block  ;; label = @17
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.tee 18
                                      local.get 5
                                      i32.const 336
                                      i32.add
                                      i32.sub
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        local.get 19
                                        br_if 0 (;@18;)
                                        local.get 20
                                        i32.const 0
                                        i32.gt_s
                                        br_if 0 (;@18;)
                                        local.get 32
                                        f64.const 0x0p+0 (;=0;)
                                        f64.eq
                                        br_if 1 (;@17;)
                                      end
                                      local.get 16
                                      i32.const 46
                                      i32.store8 offset=1
                                      local.get 16
                                      i32.const 2
                                      i32.add
                                      local.set 18
                                    end
                                    local.get 32
                                    f64.const 0x0p+0 (;=0;)
                                    f64.ne
                                    br_if 0 (;@16;)
                                  end
                                  i32.const -1
                                  local.set 16
                                  i32.const 2147483645
                                  local.get 26
                                  local.get 11
                                  local.get 25
                                  i32.sub
                                  local.tee 27
                                  i32.add
                                  local.tee 19
                                  i32.sub
                                  local.get 20
                                  i32.lt_s
                                  br_if 1 (;@14;)
                                  local.get 19
                                  local.get 20
                                  i32.const 2
                                  i32.add
                                  local.get 18
                                  local.get 5
                                  i32.const 336
                                  i32.add
                                  i32.sub
                                  local.tee 23
                                  local.get 8
                                  local.get 18
                                  i32.add
                                  local.get 20
                                  i32.lt_s
                                  select
                                  local.get 23
                                  local.get 20
                                  select
                                  local.tee 36
                                  i32.add
                                  local.set 20
                                  block  ;; label = @16
                                    local.get 22
                                    i32.const 73728
                                    i32.and
                                    local.tee 24
                                    br_if 0 (;@16;)
                                    local.get 21
                                    local.get 20
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get 21
                                    local.get 20
                                    i32.sub
                                    local.tee 22
                                    i32.const 256
                                    local.get 22
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 22
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 22
                                        i32.const 255
                                        i32.and
                                        local.set 22
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 22
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 28
                                    local.get 26
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const 65536
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 21
                                    local.get 20
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get 21
                                    local.get 20
                                    i32.sub
                                    local.tee 26
                                    i32.const 256
                                    local.get 26
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 26
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 26
                                        i32.const 255
                                        i32.and
                                        local.set 26
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 26
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 336
                                    i32.add
                                    local.get 23
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 36
                                    local.get 23
                                    i32.sub
                                    local.tee 23
                                    i32.const 1
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get 23
                                    i32.const 256
                                    local.get 23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 23
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 23
                                        i32.const 255
                                        i32.and
                                        local.set 23
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 23
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 25
                                    local.get 27
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const 8192
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 21
                                    local.get 20
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 32
                                    local.get 21
                                    local.get 20
                                    i32.sub
                                    local.tee 23
                                    i32.const 256
                                    local.get 23
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 23
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 23
                                        i32.const 255
                                        i32.and
                                        local.set 23
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 23
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  local.get 20
                                  local.get 21
                                  local.get 20
                                  i32.gt_s
                                  select
                                  local.set 16
                                  br 1 (;@14;)
                                end
                                local.get 20
                                i32.const 0
                                i32.lt_s
                                local.set 16
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 32
                                    f64.const 0x0p+0 (;=0;)
                                    f64.ne
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.load offset=364
                                    local.set 17
                                    br 1 (;@15;)
                                  end
                                  local.get 5
                                  local.get 5
                                  i32.load offset=364
                                  i32.const -28
                                  i32.add
                                  local.tee 17
                                  i32.store offset=364
                                  local.get 32
                                  f64.const 0x1p+28 (;=2.68435e+08;)
                                  f64.mul
                                  local.set 32
                                end
                                i32.const 6
                                local.get 20
                                local.get 16
                                select
                                local.set 29
                                local.get 5
                                i32.const 368
                                i32.add
                                local.get 10
                                local.get 17
                                i32.const 0
                                i32.lt_s
                                select
                                local.tee 28
                                local.set 19
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 32
                                      f64.const 0x1p+32 (;=4.29497e+09;)
                                      f64.lt
                                      local.get 32
                                      f64.const 0x0p+0 (;=0;)
                                      f64.ge
                                      i32.and
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 32
                                      i32.trunc_f64_u
                                      local.set 16
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 16
                                  end
                                  local.get 19
                                  local.get 16
                                  i32.store
                                  local.get 19
                                  i32.const 4
                                  i32.add
                                  local.set 19
                                  local.get 32
                                  local.get 16
                                  f64.convert_i32_u
                                  f64.sub
                                  f64.const 0x1.dcd65p+29 (;=1e+09;)
                                  f64.mul
                                  local.tee 32
                                  f64.const 0x0p+0 (;=0;)
                                  f64.ne
                                  br_if 0 (;@15;)
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 17
                                    i32.const 1
                                    i32.ge_s
                                    br_if 0 (;@16;)
                                    local.get 19
                                    local.set 16
                                    local.get 28
                                    local.set 18
                                    br 1 (;@15;)
                                  end
                                  local.get 28
                                  local.set 18
                                  loop  ;; label = @16
                                    local.get 17
                                    i32.const 29
                                    local.get 17
                                    i32.const 29
                                    i32.lt_s
                                    select
                                    local.set 17
                                    block  ;; label = @17
                                      local.get 19
                                      i32.const -4
                                      i32.add
                                      local.tee 16
                                      local.get 18
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 17
                                      i64.extend_i32_u
                                      local.set 31
                                      i64.const 0
                                      local.set 30
                                      loop  ;; label = @18
                                        local.get 16
                                        local.get 16
                                        i64.load32_u
                                        local.get 31
                                        i64.shl
                                        local.get 30
                                        i64.const 4294967295
                                        i64.and
                                        i64.add
                                        local.tee 30
                                        local.get 30
                                        i64.const 1000000000
                                        i64.div_u
                                        local.tee 30
                                        i64.const 1000000000
                                        i64.mul
                                        i64.sub
                                        i64.store32
                                        local.get 16
                                        i32.const -4
                                        i32.add
                                        local.tee 16
                                        local.get 18
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 30
                                      i32.wrap_i64
                                      local.tee 16
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 18
                                      i32.const -4
                                      i32.add
                                      local.tee 18
                                      local.get 16
                                      i32.store
                                    end
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 19
                                        local.tee 16
                                        local.get 18
                                        i32.le_u
                                        br_if 1 (;@17;)
                                        local.get 16
                                        i32.const -4
                                        i32.add
                                        local.tee 19
                                        i32.load
                                        i32.eqz
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 5
                                    local.get 5
                                    i32.load offset=364
                                    local.get 17
                                    i32.sub
                                    local.tee 17
                                    i32.store offset=364
                                    local.get 16
                                    local.set 19
                                    local.get 17
                                    i32.const 0
                                    i32.gt_s
                                    br_if 0 (;@16;)
                                  end
                                end
                                block  ;; label = @15
                                  local.get 17
                                  i32.const -1
                                  i32.gt_s
                                  br_if 0 (;@15;)
                                  local.get 29
                                  i32.const 25
                                  i32.add
                                  i32.const 9
                                  i32.div_u
                                  i32.const 1
                                  i32.add
                                  local.set 25
                                  loop  ;; label = @16
                                    i32.const 0
                                    local.get 17
                                    i32.sub
                                    local.tee 19
                                    i32.const 9
                                    local.get 19
                                    i32.const 9
                                    i32.lt_s
                                    select
                                    local.set 23
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 18
                                        local.get 16
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                        local.get 18
                                        local.get 18
                                        i32.const 4
                                        i32.add
                                        local.get 18
                                        i32.load
                                        select
                                        local.set 18
                                        br 1 (;@17;)
                                      end
                                      i32.const 1000000000
                                      local.get 23
                                      i32.shr_u
                                      local.set 24
                                      i32.const -1
                                      local.get 23
                                      i32.shl
                                      i32.const -1
                                      i32.xor
                                      local.set 26
                                      i32.const 0
                                      local.set 17
                                      local.get 18
                                      local.set 19
                                      loop  ;; label = @18
                                        local.get 19
                                        local.get 19
                                        i32.load
                                        local.tee 20
                                        local.get 23
                                        i32.shr_u
                                        local.get 17
                                        i32.add
                                        i32.store
                                        local.get 20
                                        local.get 26
                                        i32.and
                                        local.get 24
                                        i32.mul
                                        local.set 17
                                        local.get 19
                                        i32.const 4
                                        i32.add
                                        local.tee 19
                                        local.get 16
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 18
                                      local.get 18
                                      i32.const 4
                                      i32.add
                                      local.get 18
                                      i32.load
                                      select
                                      local.set 18
                                      local.get 17
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 16
                                      local.get 17
                                      i32.store
                                      local.get 16
                                      i32.const 4
                                      i32.add
                                      local.set 16
                                    end
                                    local.get 5
                                    local.get 5
                                    i32.load offset=364
                                    local.get 23
                                    i32.add
                                    local.tee 17
                                    i32.store offset=364
                                    local.get 28
                                    local.get 18
                                    local.get 36
                                    i32.const 102
                                    i32.eq
                                    select
                                    local.tee 19
                                    local.get 25
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    local.get 16
                                    local.get 16
                                    local.get 19
                                    i32.sub
                                    i32.const 2
                                    i32.shr_s
                                    local.get 25
                                    i32.gt_s
                                    select
                                    local.set 16
                                    local.get 17
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                  end
                                end
                                i32.const 0
                                local.set 19
                                block  ;; label = @15
                                  local.get 18
                                  local.get 16
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 28
                                  local.get 18
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  local.set 19
                                  local.get 18
                                  i32.load
                                  local.tee 20
                                  i32.const 10
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  i32.const 10
                                  local.set 17
                                  loop  ;; label = @16
                                    local.get 19
                                    i32.const 1
                                    i32.add
                                    local.set 19
                                    local.get 20
                                    local.get 17
                                    i32.const 10
                                    i32.mul
                                    local.tee 17
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                block  ;; label = @15
                                  local.get 29
                                  i32.const 0
                                  local.get 19
                                  local.get 36
                                  i32.const 102
                                  i32.eq
                                  select
                                  local.tee 20
                                  i32.sub
                                  local.get 36
                                  i32.const 103
                                  i32.eq
                                  local.tee 24
                                  local.get 29
                                  i32.const 0
                                  i32.ne
                                  i32.and
                                  local.tee 26
                                  i32.sub
                                  local.tee 17
                                  local.get 16
                                  local.get 28
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  i32.const -9
                                  i32.add
                                  i32.ge_s
                                  br_if 0 (;@15;)
                                  local.get 17
                                  i32.const 9216
                                  i32.add
                                  local.tee 25
                                  i32.const 9
                                  i32.div_s
                                  local.tee 36
                                  i32.const 2
                                  i32.shl
                                  local.get 28
                                  i32.add
                                  local.tee 37
                                  i32.const -4092
                                  i32.add
                                  local.set 23
                                  i32.const 10
                                  local.set 17
                                  block  ;; label = @16
                                    local.get 25
                                    local.get 36
                                    i32.const 9
                                    i32.mul
                                    local.tee 36
                                    i32.sub
                                    i32.const 1
                                    i32.add
                                    i32.const 8
                                    i32.gt_s
                                    br_if 0 (;@16;)
                                    local.get 20
                                    local.get 36
                                    i32.add
                                    local.get 26
                                    i32.add
                                    local.get 29
                                    i32.sub
                                    i32.const -9208
                                    i32.add
                                    local.set 20
                                    i32.const 10
                                    local.set 17
                                    loop  ;; label = @17
                                      local.get 17
                                      i32.const 10
                                      i32.mul
                                      local.set 17
                                      local.get 20
                                      i32.const -1
                                      i32.add
                                      local.tee 20
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 23
                                  i32.load
                                  local.tee 26
                                  local.get 26
                                  local.get 17
                                  i32.div_u
                                  local.tee 25
                                  local.get 17
                                  i32.mul
                                  i32.sub
                                  local.set 20
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 23
                                      i32.const 4
                                      i32.add
                                      local.tee 36
                                      local.get 16
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 20
                                      i32.eqz
                                      br_if 1 (;@16;)
                                    end
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 25
                                        i32.const 1
                                        i32.and
                                        br_if 0 (;@18;)
                                        f64.const 0x1p+53 (;=9.0072e+15;)
                                        local.set 32
                                        local.get 23
                                        local.get 18
                                        i32.le_u
                                        br_if 1 (;@17;)
                                        local.get 17
                                        i32.const 1000000000
                                        i32.ne
                                        br_if 1 (;@17;)
                                        local.get 23
                                        i32.const -4
                                        i32.add
                                        i32.load8_u
                                        i32.const 1
                                        i32.and
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                      local.set 32
                                    end
                                    f64.const 0x1p-1 (;=0.5;)
                                    local.set 35
                                    block  ;; label = @17
                                      local.get 20
                                      local.get 17
                                      i32.const 1
                                      i32.shr_u
                                      local.tee 25
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      f64.const 0x1p+0 (;=1;)
                                      f64.const 0x1.8p+0 (;=1.5;)
                                      local.get 20
                                      local.get 25
                                      i32.eq
                                      select
                                      f64.const 0x1.8p+0 (;=1.5;)
                                      local.get 36
                                      local.get 16
                                      i32.eq
                                      select
                                      local.set 35
                                    end
                                    block  ;; label = @17
                                      local.get 33
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 34
                                      i32.load8_u
                                      i32.const 45
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 35
                                      f64.neg
                                      local.set 35
                                      local.get 32
                                      f64.neg
                                      local.set 32
                                    end
                                    local.get 23
                                    local.get 26
                                    local.get 20
                                    i32.sub
                                    local.tee 20
                                    i32.store
                                    local.get 32
                                    local.get 35
                                    f64.add
                                    local.get 32
                                    f64.eq
                                    br_if 0 (;@16;)
                                    local.get 23
                                    local.get 20
                                    local.get 17
                                    i32.add
                                    local.tee 19
                                    i32.store
                                    block  ;; label = @17
                                      local.get 19
                                      i32.const 1000000000
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 37
                                      i32.const -4096
                                      i32.add
                                      local.set 19
                                      loop  ;; label = @18
                                        local.get 19
                                        i32.const 4
                                        i32.add
                                        i32.const 0
                                        i32.store
                                        block  ;; label = @19
                                          local.get 19
                                          local.get 18
                                          i32.ge_u
                                          br_if 0 (;@19;)
                                          local.get 18
                                          i32.const -4
                                          i32.add
                                          local.tee 18
                                          i32.const 0
                                          i32.store
                                        end
                                        local.get 19
                                        local.get 19
                                        i32.load
                                        i32.const 1
                                        i32.add
                                        local.tee 17
                                        i32.store
                                        local.get 19
                                        i32.const -4
                                        i32.add
                                        local.set 19
                                        local.get 17
                                        i32.const 999999999
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 19
                                      i32.const 4
                                      i32.add
                                      local.set 23
                                    end
                                    local.get 28
                                    local.get 18
                                    i32.sub
                                    i32.const 2
                                    i32.shr_s
                                    i32.const 9
                                    i32.mul
                                    local.set 19
                                    local.get 18
                                    i32.load
                                    local.tee 20
                                    i32.const 10
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    i32.const 10
                                    local.set 17
                                    loop  ;; label = @17
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.set 19
                                      local.get 20
                                      local.get 17
                                      i32.const 10
                                      i32.mul
                                      local.tee 17
                                      i32.ge_u
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 23
                                  i32.const 4
                                  i32.add
                                  local.tee 17
                                  local.get 16
                                  local.get 16
                                  local.get 17
                                  i32.gt_u
                                  select
                                  local.set 16
                                end
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      local.tee 20
                                      local.get 18
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 36
                                      br 2 (;@15;)
                                    end
                                    local.get 20
                                    i32.const -4
                                    i32.add
                                    local.tee 16
                                    i32.load
                                    i32.eqz
                                    br_if 0 (;@16;)
                                  end
                                  i32.const 1
                                  local.set 36
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 24
                                    br_if 0 (;@16;)
                                    local.get 22
                                    i32.const 8
                                    i32.and
                                    local.set 26
                                    br 1 (;@15;)
                                  end
                                  local.get 19
                                  i32.const -1
                                  i32.xor
                                  i32.const -1
                                  local.get 29
                                  i32.const 1
                                  local.get 29
                                  select
                                  local.tee 16
                                  local.get 19
                                  i32.gt_s
                                  local.get 19
                                  i32.const -5
                                  i32.gt_s
                                  i32.and
                                  local.tee 17
                                  select
                                  local.get 16
                                  i32.add
                                  local.set 29
                                  i32.const -1
                                  i32.const -2
                                  local.get 17
                                  select
                                  local.get 27
                                  i32.add
                                  local.set 27
                                  local.get 22
                                  i32.const 8
                                  i32.and
                                  local.tee 26
                                  br_if 0 (;@15;)
                                  i32.const 9
                                  local.set 16
                                  block  ;; label = @16
                                    local.get 36
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 20
                                    i32.const -4
                                    i32.add
                                    i32.load
                                    local.tee 23
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 16
                                    local.get 23
                                    i32.const 10
                                    i32.rem_u
                                    br_if 0 (;@16;)
                                    i32.const 10
                                    local.set 17
                                    i32.const 0
                                    local.set 16
                                    loop  ;; label = @17
                                      local.get 16
                                      i32.const 1
                                      i32.add
                                      local.set 16
                                      local.get 23
                                      local.get 17
                                      i32.const 10
                                      i32.mul
                                      local.tee 17
                                      i32.rem_u
                                      i32.eqz
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 20
                                  local.get 28
                                  i32.sub
                                  i32.const 2
                                  i32.shr_s
                                  i32.const 9
                                  i32.mul
                                  i32.const -9
                                  i32.add
                                  local.set 17
                                  block  ;; label = @16
                                    local.get 27
                                    i32.const 32
                                    i32.or
                                    i32.const 102
                                    i32.ne
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 26
                                    local.get 29
                                    local.get 17
                                    local.get 16
                                    i32.sub
                                    local.tee 16
                                    i32.const 0
                                    local.get 16
                                    i32.const 0
                                    i32.gt_s
                                    select
                                    local.tee 16
                                    local.get 29
                                    local.get 16
                                    i32.lt_s
                                    select
                                    local.set 29
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 26
                                  local.get 29
                                  local.get 17
                                  local.get 19
                                  i32.add
                                  local.get 16
                                  i32.sub
                                  local.tee 16
                                  i32.const 0
                                  local.get 16
                                  i32.const 0
                                  i32.gt_s
                                  select
                                  local.tee 16
                                  local.get 29
                                  local.get 16
                                  i32.lt_s
                                  select
                                  local.set 29
                                end
                                i32.const -1
                                local.set 16
                                local.get 29
                                i32.const 2147483645
                                i32.const 2147483646
                                local.get 29
                                local.get 26
                                i32.or
                                local.tee 25
                                select
                                i32.gt_s
                                br_if 0 (;@14;)
                                local.get 29
                                local.get 25
                                i32.const 0
                                i32.ne
                                i32.add
                                i32.const 1
                                i32.add
                                local.set 37
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 27
                                    i32.const 32
                                    i32.or
                                    i32.const 102
                                    i32.ne
                                    local.tee 38
                                    br_if 0 (;@16;)
                                    local.get 19
                                    i32.const 2147483647
                                    local.get 37
                                    i32.sub
                                    i32.gt_s
                                    br_if 2 (;@14;)
                                    local.get 19
                                    i32.const 0
                                    local.get 19
                                    i32.const 0
                                    i32.gt_s
                                    select
                                    local.set 19
                                    br 1 (;@15;)
                                  end
                                  local.get 11
                                  local.set 17
                                  block  ;; label = @16
                                    local.get 19
                                    local.get 19
                                    i32.const 31
                                    i32.shr_s
                                    local.tee 16
                                    i32.add
                                    local.get 16
                                    i32.xor
                                    local.tee 16
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    loop  ;; label = @17
                                      local.get 17
                                      i32.const -1
                                      i32.add
                                      local.tee 17
                                      local.get 16
                                      local.get 16
                                      i32.const 10
                                      i32.div_u
                                      local.tee 23
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get 16
                                      i32.const 9
                                      i32.gt_u
                                      local.set 24
                                      local.get 23
                                      local.set 16
                                      local.get 24
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 11
                                    local.get 17
                                    i32.sub
                                    i32.const 1
                                    i32.gt_s
                                    br_if 0 (;@16;)
                                    local.get 17
                                    i32.const -1
                                    i32.add
                                    local.set 16
                                    loop  ;; label = @17
                                      local.get 16
                                      i32.const 48
                                      i32.store8
                                      local.get 11
                                      local.get 16
                                      i32.sub
                                      local.set 17
                                      local.get 16
                                      i32.const -1
                                      i32.add
                                      local.tee 23
                                      local.set 16
                                      local.get 17
                                      i32.const 2
                                      i32.lt_s
                                      br_if 0 (;@17;)
                                    end
                                    local.get 23
                                    i32.const 1
                                    i32.add
                                    local.set 17
                                  end
                                  local.get 17
                                  i32.const -2
                                  i32.add
                                  local.tee 39
                                  local.get 27
                                  i32.store8
                                  i32.const -1
                                  local.set 16
                                  local.get 17
                                  i32.const -1
                                  i32.add
                                  i32.const 45
                                  i32.const 43
                                  local.get 19
                                  i32.const 0
                                  i32.lt_s
                                  select
                                  i32.store8
                                  local.get 11
                                  local.get 39
                                  i32.sub
                                  local.tee 19
                                  i32.const 2147483647
                                  local.get 37
                                  i32.sub
                                  i32.gt_s
                                  br_if 1 (;@14;)
                                end
                                i32.const -1
                                local.set 16
                                local.get 19
                                local.get 37
                                i32.add
                                local.tee 19
                                local.get 33
                                i32.const 2147483647
                                i32.xor
                                i32.gt_s
                                br_if 0 (;@14;)
                                local.get 19
                                local.get 33
                                i32.add
                                local.set 27
                                block  ;; label = @15
                                  local.get 22
                                  i32.const 73728
                                  i32.and
                                  local.tee 22
                                  br_if 0 (;@15;)
                                  local.get 21
                                  local.get 27
                                  i32.le_s
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get 21
                                  local.get 27
                                  i32.sub
                                  local.tee 24
                                  i32.const 256
                                  local.get 24
                                  i32.const 256
                                  i32.lt_u
                                  local.tee 16
                                  select
                                  call $memset
                                  drop
                                  local.get 0
                                  i32.load
                                  local.tee 17
                                  i32.const 32
                                  i32.and
                                  local.set 19
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.eqz
                                      local.set 16
                                      local.get 24
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get 0
                                          call $__fwritex
                                          drop
                                          local.get 0
                                          i32.load
                                          local.set 17
                                        end
                                        local.get 17
                                        i32.const 32
                                        i32.and
                                        local.tee 23
                                        i32.eqz
                                        local.set 16
                                        local.get 19
                                        i32.const -256
                                        i32.add
                                        local.tee 19
                                        i32.const 255
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 23
                                      br_if 2 (;@15;)
                                      local.get 24
                                      i32.const 255
                                      i32.and
                                      local.set 24
                                      br 1 (;@16;)
                                    end
                                    local.get 19
                                    br_if 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  local.get 24
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 34
                                  local.get 33
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                block  ;; label = @15
                                  local.get 22
                                  i32.const 65536
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 21
                                  local.get 27
                                  i32.le_s
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  i32.const 48
                                  local.get 21
                                  local.get 27
                                  i32.sub
                                  local.tee 24
                                  i32.const 256
                                  local.get 24
                                  i32.const 256
                                  i32.lt_u
                                  local.tee 16
                                  select
                                  call $memset
                                  drop
                                  local.get 0
                                  i32.load
                                  local.tee 17
                                  i32.const 32
                                  i32.and
                                  local.set 19
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.eqz
                                      local.set 16
                                      local.get 24
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get 0
                                          call $__fwritex
                                          drop
                                          local.get 0
                                          i32.load
                                          local.set 17
                                        end
                                        local.get 17
                                        i32.const 32
                                        i32.and
                                        local.tee 23
                                        i32.eqz
                                        local.set 16
                                        local.get 19
                                        i32.const -256
                                        i32.add
                                        local.tee 19
                                        i32.const 255
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 23
                                      br_if 2 (;@15;)
                                      local.get 24
                                      i32.const 255
                                      i32.and
                                      local.set 24
                                      br 1 (;@16;)
                                    end
                                    local.get 19
                                    br_if 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  local.get 24
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 38
                                    br_if 0 (;@16;)
                                    local.get 28
                                    local.get 18
                                    local.get 18
                                    local.get 28
                                    i32.gt_u
                                    select
                                    local.tee 24
                                    local.set 23
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 23
                                          i32.load
                                          local.tee 16
                                          br_if 0 (;@19;)
                                          i32.const 0
                                          local.set 18
                                          br 1 (;@18;)
                                        end
                                        i32.const 0
                                        local.set 18
                                        loop  ;; label = @19
                                          local.get 6
                                          local.get 18
                                          i32.add
                                          local.get 16
                                          local.get 16
                                          i32.const 10
                                          i32.div_u
                                          local.tee 19
                                          i32.const 10
                                          i32.mul
                                          i32.sub
                                          i32.const 48
                                          i32.or
                                          i32.store8
                                          local.get 18
                                          i32.const -1
                                          i32.add
                                          local.set 18
                                          local.get 16
                                          i32.const 9
                                          i32.gt_u
                                          local.set 17
                                          local.get 19
                                          local.set 16
                                          local.get 17
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 9
                                      local.get 18
                                      i32.add
                                      local.set 16
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 23
                                          local.get 24
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 16
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          i32.le_u
                                          br_if 1 (;@18;)
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get 18
                                          i32.const 9
                                          i32.add
                                          call $memset
                                          drop
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          local.set 16
                                          br 1 (;@18;)
                                        end
                                        local.get 18
                                        br_if 0 (;@18;)
                                        local.get 16
                                        i32.const -1
                                        i32.add
                                        local.tee 16
                                        i32.const 48
                                        i32.store8
                                      end
                                      block  ;; label = @18
                                        local.get 0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if 0 (;@18;)
                                        local.get 16
                                        local.get 9
                                        local.get 16
                                        i32.sub
                                        local.get 0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get 23
                                      i32.const 4
                                      i32.add
                                      local.tee 23
                                      local.get 28
                                      i32.le_u
                                      br_if 0 (;@17;)
                                    end
                                    block  ;; label = @17
                                      local.get 25
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.load8_u
                                      i32.const 32
                                      i32.and
                                      br_if 0 (;@17;)
                                      i32.const 10003
                                      i32.const 1
                                      local.get 0
                                      call $__fwritex
                                      drop
                                    end
                                    block  ;; label = @17
                                      local.get 23
                                      local.get 20
                                      i32.lt_u
                                      local.get 29
                                      i32.const 0
                                      i32.gt_s
                                      i32.and
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      loop  ;; label = @18
                                        local.get 9
                                        local.set 16
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 23
                                            i32.load
                                            local.tee 18
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 9
                                            local.set 16
                                            loop  ;; label = @21
                                              local.get 16
                                              i32.const -1
                                              i32.add
                                              local.tee 16
                                              local.get 18
                                              local.get 18
                                              i32.const 10
                                              i32.div_u
                                              local.tee 19
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 18
                                              i32.const 9
                                              i32.gt_u
                                              local.set 17
                                              local.get 19
                                              local.set 18
                                              local.get 17
                                              br_if 0 (;@21;)
                                            end
                                            local.get 16
                                            local.get 5
                                            i32.const 336
                                            i32.add
                                            i32.le_u
                                            br_if 1 (;@19;)
                                          end
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get 16
                                          local.get 12
                                          i32.add
                                          call $memset
                                          drop
                                          loop  ;; label = @20
                                            local.get 16
                                            i32.const -1
                                            i32.add
                                            local.tee 16
                                            local.get 5
                                            i32.const 336
                                            i32.add
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        block  ;; label = @19
                                          local.get 0
                                          i32.load8_u
                                          i32.const 32
                                          i32.and
                                          br_if 0 (;@19;)
                                          local.get 16
                                          local.get 29
                                          i32.const 9
                                          local.get 29
                                          i32.const 9
                                          i32.lt_s
                                          select
                                          local.get 0
                                          call $__fwritex
                                          drop
                                        end
                                        local.get 23
                                        i32.const 4
                                        i32.add
                                        local.tee 23
                                        local.get 20
                                        i32.lt_u
                                        local.get 29
                                        i32.const -9
                                        i32.add
                                        local.tee 29
                                        i32.const 0
                                        i32.gt_s
                                        i32.and
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 29
                                    i32.const 1
                                    i32.lt_s
                                    br_if 1 (;@15;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get 29
                                    i32.const 256
                                    local.get 29
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 29
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 3 (;@15;)
                                        local.get 29
                                        i32.const 255
                                        i32.and
                                        local.set 29
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 2 (;@15;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 29
                                    local.get 0
                                    call $__fwritex
                                    drop
                                    br 1 (;@15;)
                                  end
                                  block  ;; label = @16
                                    local.get 29
                                    i32.const -1
                                    i32.le_s
                                    br_if 0 (;@16;)
                                    local.get 20
                                    local.get 18
                                    i32.const 4
                                    i32.add
                                    local.get 36
                                    select
                                    local.set 24
                                    local.get 18
                                    local.set 23
                                    loop  ;; label = @17
                                      local.get 9
                                      local.set 17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 23
                                          i32.load
                                          local.tee 16
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          i32.const 0
                                          local.set 19
                                          loop  ;; label = @20
                                            local.get 5
                                            i32.const 336
                                            i32.add
                                            local.get 19
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 16
                                            local.get 16
                                            i32.const 10
                                            i32.div_u
                                            local.tee 17
                                            i32.const 10
                                            i32.mul
                                            i32.sub
                                            i32.const 48
                                            i32.or
                                            i32.store8
                                            local.get 19
                                            i32.const -1
                                            i32.add
                                            local.set 19
                                            local.get 16
                                            i32.const 9
                                            i32.gt_u
                                            local.set 20
                                            local.get 17
                                            local.set 16
                                            local.get 20
                                            br_if 0 (;@20;)
                                          end
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          local.get 19
                                          i32.add
                                          i32.const 9
                                          i32.add
                                          local.set 17
                                          local.get 19
                                          br_if 1 (;@18;)
                                        end
                                        local.get 17
                                        i32.const -1
                                        i32.add
                                        local.tee 17
                                        i32.const 48
                                        i32.store8
                                      end
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 23
                                          local.get 18
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 17
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          i32.le_u
                                          br_if 1 (;@18;)
                                          local.get 5
                                          i32.const 336
                                          i32.add
                                          i32.const 48
                                          local.get 17
                                          local.get 12
                                          i32.add
                                          call $memset
                                          drop
                                          loop  ;; label = @20
                                            local.get 17
                                            i32.const -1
                                            i32.add
                                            local.tee 17
                                            local.get 5
                                            i32.const 336
                                            i32.add
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            br 2 (;@18;)
                                          end
                                        end
                                        block  ;; label = @19
                                          local.get 0
                                          i32.load8_u
                                          i32.const 32
                                          i32.and
                                          br_if 0 (;@19;)
                                          local.get 17
                                          i32.const 1
                                          local.get 0
                                          call $__fwritex
                                          drop
                                        end
                                        local.get 17
                                        i32.const 1
                                        i32.add
                                        local.set 17
                                        block  ;; label = @19
                                          local.get 26
                                          br_if 0 (;@19;)
                                          local.get 29
                                          i32.const 1
                                          i32.lt_s
                                          br_if 1 (;@18;)
                                        end
                                        local.get 0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if 0 (;@18;)
                                        i32.const 10003
                                        i32.const 1
                                        local.get 0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get 9
                                      local.get 17
                                      i32.sub
                                      local.set 16
                                      block  ;; label = @18
                                        local.get 0
                                        i32.load8_u
                                        i32.const 32
                                        i32.and
                                        br_if 0 (;@18;)
                                        local.get 17
                                        local.get 16
                                        local.get 29
                                        local.get 29
                                        local.get 16
                                        i32.gt_s
                                        select
                                        local.get 0
                                        call $__fwritex
                                        drop
                                      end
                                      local.get 23
                                      i32.const 4
                                      i32.add
                                      local.tee 23
                                      local.get 24
                                      i32.lt_u
                                      local.get 29
                                      local.get 16
                                      i32.sub
                                      local.tee 29
                                      i32.const -1
                                      i32.gt_s
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                    local.get 29
                                    i32.const 1
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    i32.const 48
                                    local.get 29
                                    i32.const 256
                                    local.get 29
                                    i32.const 256
                                    i32.lt_u
                                    local.tee 16
                                    select
                                    call $memset
                                    drop
                                    local.get 0
                                    i32.load
                                    local.tee 19
                                    i32.const 32
                                    i32.and
                                    local.set 18
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        br_if 0 (;@18;)
                                        local.get 18
                                        i32.eqz
                                        local.set 16
                                        local.get 29
                                        local.set 18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            local.get 16
                                            i32.const 1
                                            i32.and
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 5
                                            i32.const 64
                                            i32.add
                                            i32.const 256
                                            local.get 0
                                            call $__fwritex
                                            drop
                                            local.get 0
                                            i32.load
                                            local.set 19
                                          end
                                          local.get 19
                                          i32.const 32
                                          i32.and
                                          local.tee 17
                                          i32.eqz
                                          local.set 16
                                          local.get 18
                                          i32.const -256
                                          i32.add
                                          local.tee 18
                                          i32.const 255
                                          i32.gt_u
                                          br_if 0 (;@19;)
                                        end
                                        local.get 17
                                        br_if 2 (;@16;)
                                        local.get 29
                                        i32.const 255
                                        i32.and
                                        local.set 29
                                        br 1 (;@17;)
                                      end
                                      local.get 18
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 64
                                    i32.add
                                    local.get 29
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 39
                                  local.get 11
                                  local.get 39
                                  i32.sub
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                block  ;; label = @15
                                  local.get 22
                                  i32.const 8192
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 21
                                  local.get 27
                                  i32.le_s
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  i32.const 32
                                  local.get 21
                                  local.get 27
                                  i32.sub
                                  local.tee 20
                                  i32.const 256
                                  local.get 20
                                  i32.const 256
                                  i32.lt_u
                                  local.tee 16
                                  select
                                  call $memset
                                  drop
                                  local.get 0
                                  i32.load
                                  local.tee 19
                                  i32.const 32
                                  i32.and
                                  local.set 18
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 16
                                      br_if 0 (;@17;)
                                      local.get 18
                                      i32.eqz
                                      local.set 16
                                      local.get 20
                                      local.set 18
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 16
                                          i32.const 1
                                          i32.and
                                          i32.eqz
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 64
                                          i32.add
                                          i32.const 256
                                          local.get 0
                                          call $__fwritex
                                          drop
                                          local.get 0
                                          i32.load
                                          local.set 19
                                        end
                                        local.get 19
                                        i32.const 32
                                        i32.and
                                        local.tee 17
                                        i32.eqz
                                        local.set 16
                                        local.get 18
                                        i32.const -256
                                        i32.add
                                        local.tee 18
                                        i32.const 255
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                      local.get 17
                                      br_if 2 (;@15;)
                                      local.get 20
                                      i32.const 255
                                      i32.and
                                      local.set 20
                                      br 1 (;@16;)
                                    end
                                    local.get 18
                                    br_if 1 (;@15;)
                                  end
                                  local.get 5
                                  i32.const 64
                                  i32.add
                                  local.get 20
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 21
                                local.get 27
                                local.get 21
                                local.get 27
                                i32.gt_s
                                select
                                local.set 16
                              end
                              local.get 16
                              i32.const 0
                              i32.ge_s
                              br_if 9 (;@4;)
                              br 10 (;@3;)
                            end
                            i32.const 0
                            local.set 28
                            i32.const 9324
                            local.set 29
                          end
                          local.get 13
                          local.set 16
                          br 6 (;@5;)
                        end
                        local.get 24
                        local.set 22
                        local.get 19
                        local.set 20
                        local.get 16
                        i32.load8_u
                        i32.eqz
                        br_if 5 (;@5;)
                        br 7 (;@3;)
                      end
                      local.get 1
                      i32.load8_u offset=1
                      local.set 16
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  br_if 6 (;@1;)
                  block  ;; label = @8
                    local.get 14
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 15
                    br 7 (;@1;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=4
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 8
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=8
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 2
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 16
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=12
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 3
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 24
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=16
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 4
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 32
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=20
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 5
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 40
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=24
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 6
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 48
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=28
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 7
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 56
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    block  ;; label = @9
                      local.get 4
                      i32.load offset=32
                      local.tee 1
                      br_if 0 (;@9;)
                      i32.const 8
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 64
                    i32.add
                    local.get 1
                    local.get 2
                    call $pop_arg
                    local.get 4
                    i32.load offset=36
                    local.tee 1
                    br_if 2 (;@6;)
                    i32.const 9
                    local.set 1
                  end
                  local.get 1
                  i32.const 2
                  i32.shl
                  local.set 1
                  loop  ;; label = @8
                    local.get 4
                    local.get 1
                    i32.add
                    i32.load
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 4
                    i32.add
                    local.tee 1
                    i32.const 40
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 1
                  local.set 15
                  br 6 (;@1;)
                end
                i32.const 0
                i32.const 28
                i32.store offset=1024
                br 4 (;@2;)
              end
              local.get 3
              i32.const 72
              i32.add
              local.get 1
              local.get 2
              call $pop_arg
              i32.const 1
              local.set 15
              br 4 (;@1;)
            end
            local.get 16
            local.get 17
            i32.sub
            local.tee 25
            local.get 20
            local.get 20
            local.get 25
            i32.lt_s
            select
            local.tee 27
            i32.const 2147483647
            local.get 28
            i32.sub
            i32.gt_s
            br_if 1 (;@3;)
            local.get 28
            local.get 27
            i32.add
            local.tee 26
            local.get 21
            local.get 21
            local.get 26
            i32.lt_s
            select
            local.tee 16
            local.get 18
            i32.gt_s
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 22
              i32.const 73728
              i32.and
              local.tee 22
              br_if 0 (;@5;)
              local.get 26
              local.get 21
              i32.ge_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 64
              i32.add
              i32.const 32
              local.get 16
              local.get 26
              i32.sub
              local.tee 36
              i32.const 256
              local.get 36
              i32.const 256
              i32.lt_u
              local.tee 18
              select
              call $memset
              drop
              local.get 0
              i32.load
              local.tee 23
              i32.const 32
              i32.and
              local.set 19
              block  ;; label = @6
                block  ;; label = @7
                  local.get 18
                  br_if 0 (;@7;)
                  local.get 19
                  i32.eqz
                  local.set 18
                  local.get 36
                  local.set 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                      local.get 0
                      i32.load
                      local.set 23
                    end
                    local.get 23
                    i32.const 32
                    i32.and
                    local.tee 24
                    i32.eqz
                    local.set 18
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  local.get 24
                  br_if 2 (;@5;)
                  local.get 36
                  i32.const 255
                  i32.and
                  local.set 36
                  br 1 (;@6;)
                end
                local.get 19
                br_if 1 (;@5;)
              end
              local.get 5
              i32.const 64
              i32.add
              local.get 36
              local.get 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              local.get 29
              local.get 28
              local.get 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              local.get 22
              i32.const 65536
              i32.ne
              br_if 0 (;@5;)
              local.get 26
              local.get 21
              i32.ge_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 64
              i32.add
              i32.const 48
              local.get 16
              local.get 26
              i32.sub
              local.tee 28
              i32.const 256
              local.get 28
              i32.const 256
              i32.lt_u
              local.tee 18
              select
              call $memset
              drop
              local.get 0
              i32.load
              local.tee 23
              i32.const 32
              i32.and
              local.set 19
              block  ;; label = @6
                block  ;; label = @7
                  local.get 18
                  br_if 0 (;@7;)
                  local.get 19
                  i32.eqz
                  local.set 18
                  local.get 28
                  local.set 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                      local.get 0
                      i32.load
                      local.set 23
                    end
                    local.get 23
                    i32.const 32
                    i32.and
                    local.tee 24
                    i32.eqz
                    local.set 18
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  local.get 24
                  br_if 2 (;@5;)
                  local.get 28
                  i32.const 255
                  i32.and
                  local.set 28
                  br 1 (;@6;)
                end
                local.get 19
                br_if 1 (;@5;)
              end
              local.get 5
              i32.const 64
              i32.add
              local.get 28
              local.get 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              local.get 25
              local.get 20
              i32.ge_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 64
              i32.add
              i32.const 48
              local.get 27
              local.get 25
              i32.sub
              local.tee 24
              i32.const 256
              local.get 24
              i32.const 256
              i32.lt_u
              local.tee 18
              select
              call $memset
              drop
              local.get 0
              i32.load
              local.tee 20
              i32.const 32
              i32.and
              local.set 19
              block  ;; label = @6
                block  ;; label = @7
                  local.get 18
                  br_if 0 (;@7;)
                  local.get 19
                  i32.eqz
                  local.set 18
                  local.get 24
                  local.set 19
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 18
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 64
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                      local.get 0
                      i32.load
                      local.set 20
                    end
                    local.get 20
                    i32.const 32
                    i32.and
                    local.tee 23
                    i32.eqz
                    local.set 18
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  local.get 23
                  br_if 2 (;@5;)
                  local.get 24
                  i32.const 255
                  i32.and
                  local.set 24
                  br 1 (;@6;)
                end
                local.get 19
                br_if 1 (;@5;)
              end
              local.get 5
              i32.const 64
              i32.add
              local.get 24
              local.get 0
              call $__fwritex
              drop
            end
            block  ;; label = @5
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              local.get 17
              local.get 25
              local.get 0
              call $__fwritex
              drop
            end
            local.get 22
            i32.const 8192
            i32.ne
            br_if 0 (;@4;)
            local.get 26
            local.get 21
            i32.ge_s
            br_if 0 (;@4;)
            local.get 5
            i32.const 64
            i32.add
            i32.const 32
            local.get 16
            local.get 26
            i32.sub
            local.tee 20
            i32.const 256
            local.get 20
            i32.const 256
            i32.lt_u
            local.tee 18
            select
            call $memset
            drop
            local.get 0
            i32.load
            local.tee 17
            i32.const 32
            i32.and
            local.set 19
            block  ;; label = @5
              block  ;; label = @6
                local.get 18
                br_if 0 (;@6;)
                local.get 19
                i32.eqz
                local.set 18
                local.get 20
                local.set 19
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 18
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 64
                    i32.add
                    i32.const 256
                    local.get 0
                    call $__fwritex
                    drop
                    local.get 0
                    i32.load
                    local.set 17
                  end
                  local.get 17
                  i32.const 32
                  i32.and
                  local.tee 21
                  i32.eqz
                  local.set 18
                  local.get 19
                  i32.const -256
                  i32.add
                  local.tee 19
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                end
                local.get 21
                br_if 2 (;@4;)
                local.get 20
                i32.const 255
                i32.and
                local.set 20
                br 1 (;@5;)
              end
              local.get 19
              br_if 1 (;@4;)
            end
            local.get 5
            i32.const 64
            i32.add
            local.get 20
            local.get 0
            call $__fwritex
            drop
            br 0 (;@4;)
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=1024
      end
      i32.const -1
      local.set 15
    end
    local.get 5
    i32.const 880
    i32.add
    global.set 0
    local.get 15)
  (func $pop_arg (type 18) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const -9
      i32.add
      local.tee 1
      i32.const 17
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
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          br_table 17 (;@2;) 0 (;@19;) 1 (;@18;) 4 (;@15;) 2 (;@17;) 3 (;@16;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;)
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
        call $long_double_not_supported
        unreachable
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
    end)
  (func $long_double_not_supported (type 7)
    i32.const 9808
    i32.const 10160
    call $fputs
    drop
    call $abort
    unreachable)
  (func $printf (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 10040
    local.get 0
    local.get 1
    call $vfprintf
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $_fft (type 21) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 i64 i32 f64 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 3
      local.get 2
      i32.ge_s
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 2
      local.get 3
      i32.const 1
      i32.shl
      local.tee 5
      call $_fft
      local.get 1
      local.get 3
      i32.const 4
      i32.shl
      local.tee 6
      i32.add
      local.get 0
      local.get 6
      i32.add
      local.get 2
      local.get 5
      call $_fft
      local.get 2
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 5
      i32.shl
      local.set 7
      local.get 2
      f64.convert_i32_s
      local.set 8
      i32.const 0
      local.set 3
      loop  ;; label = @2
        i32.const 0
        f64.load offset=2624
        local.tee 9
        f64.const -0x0p+0 (;=-0;)
        f64.mul
        local.tee 10
        f64.const 0x0p+0 (;=0;)
        f64.mul
        local.get 3
        f64.convert_i32_s
        local.tee 11
        local.get 9
        f64.mul
        f64.sub
        local.set 12
        block  ;; label = @3
          local.get 10
          local.get 11
          f64.mul
          local.get 10
          f64.sub
          local.tee 13
          local.get 13
          f64.eq
          br_if 0 (;@3;)
          local.get 12
          local.get 12
          f64.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const 80
          i32.add
          local.get 10
          local.get 9
          f64.neg
          local.get 11
          f64.const 0x0p+0 (;=0;)
          call $__muldc3
          local.get 4
          f64.load offset=88
          local.set 12
          local.get 4
          f64.load offset=80
          local.set 13
        end
        local.get 4
        i32.const 64
        i32.add
        local.get 13
        local.get 12
        local.get 8
        f64.const 0x0p+0 (;=0;)
        call $__divdc3
        local.get 4
        i32.const 8
        i32.add
        local.get 4
        i64.load offset=72
        local.tee 14
        i64.store
        local.get 4
        local.get 14
        i64.store offset=40
        local.get 4
        local.get 4
        i64.load offset=64
        local.tee 14
        i64.store offset=32
        local.get 4
        local.get 14
        i64.store
        local.get 4
        i32.const 48
        i32.add
        local.get 4
        call $cexp
        local.get 4
        f64.load offset=56
        local.tee 13
        local.get 1
        local.get 6
        i32.add
        local.tee 15
        f64.load
        local.tee 9
        f64.mul
        local.get 4
        f64.load offset=48
        local.tee 11
        local.get 15
        i32.const 8
        i32.add
        f64.load
        local.tee 16
        f64.mul
        f64.add
        local.set 10
        block  ;; label = @3
          local.get 11
          local.get 9
          f64.mul
          local.get 13
          local.get 16
          f64.mul
          f64.sub
          local.tee 12
          local.get 12
          f64.eq
          br_if 0 (;@3;)
          local.get 10
          local.get 10
          f64.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const 16
          i32.add
          local.get 11
          local.get 13
          local.get 9
          local.get 16
          call $__muldc3
          local.get 4
          f64.load offset=24
          local.set 10
          local.get 4
          f64.load offset=16
          local.set 12
        end
        local.get 1
        f64.load
        local.set 13
        local.get 0
        local.get 3
        i32.const 2
        i32.div_s
        i32.const 4
        i32.shl
        i32.add
        local.tee 15
        local.get 10
        local.get 1
        i32.const 8
        i32.add
        local.tee 17
        f64.load
        f64.add
        f64.store offset=8
        local.get 15
        local.get 12
        local.get 13
        f64.add
        f64.store
        local.get 1
        f64.load
        local.set 13
        local.get 0
        local.get 2
        local.get 3
        i32.add
        i32.const 2
        i32.div_s
        i32.const 4
        i32.shl
        i32.add
        local.tee 15
        local.get 17
        f64.load
        local.get 10
        f64.sub
        f64.store offset=8
        local.get 15
        local.get 13
        local.get 12
        f64.sub
        f64.store
        local.get 1
        local.get 7
        i32.add
        local.set 1
        local.get 3
        local.get 5
        i32.add
        local.tee 3
        local.get 2
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 4
    i32.const 96
    i32.add
    global.set 0)
  (func $fft (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    local.tee 2
    local.set 3
    local.get 2
    local.get 1
    i32.const 4
    i32.shl
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.set 2
      local.get 4
      local.set 5
      local.get 1
      local.set 6
      loop  ;; label = @2
        local.get 5
        local.get 2
        i64.load
        i64.store
        local.get 5
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 16
        i32.add
        local.set 2
        local.get 5
        i32.const 16
        i32.add
        local.set 5
        local.get 6
        i32.const -1
        i32.add
        local.tee 6
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    local.get 1
    i32.const 1
    call $_fft
    local.get 3
    global.set 0)
  (func $show (type 8) (param i32 i32)
    (local i32 f64 f64)
    global.get 0
    i32.const 272
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=256
    i32.const 10005
    local.get 2
    i32.const 256
    i32.add
    call $printf
    drop
    local.get 1
    f64.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        f64.load offset=8
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=240
        i32.const 10008
        local.get 2
        i32.const 240
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=232
      local.get 2
      local.get 3
      f64.store offset=224
      i32.const 10012
      local.get 2
      i32.const 224
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=208
        i32.const 10008
        local.get 2
        i32.const 208
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=200
      local.get 2
      local.get 3
      f64.store offset=192
      i32.const 10012
      local.get 2
      i32.const 192
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=32
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 40
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=176
        i32.const 10008
        local.get 2
        i32.const 176
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=168
      local.get 2
      local.get 3
      f64.store offset=160
      i32.const 10012
      local.get 2
      i32.const 160
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=48
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 56
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=144
        i32.const 10008
        local.get 2
        i32.const 144
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=136
      local.get 2
      local.get 3
      f64.store offset=128
      i32.const 10012
      local.get 2
      i32.const 128
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=64
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 72
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=112
        i32.const 10008
        local.get 2
        i32.const 112
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=104
      local.get 2
      local.get 3
      f64.store offset=96
      i32.const 10012
      local.get 2
      i32.const 96
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=80
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 88
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=80
        i32.const 10008
        local.get 2
        i32.const 80
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=72
      local.get 2
      local.get 3
      f64.store offset=64
      i32.const 10012
      local.get 2
      i32.const 64
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=96
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 104
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=48
        i32.const 10008
        local.get 2
        i32.const 48
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=40
      local.get 2
      local.get 3
      f64.store offset=32
      i32.const 10012
      local.get 2
      i32.const 32
      i32.add
      call $printf
      drop
    end
    local.get 1
    f64.load offset=112
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 120
        i32.add
        f64.load
        local.tee 4
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        f64.store offset=16
        i32.const 10008
        local.get 2
        i32.const 16
        i32.add
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      f64.store offset=8
      local.get 2
      local.get 3
      f64.store
      i32.const 10012
      local.get 2
      call $printf
      drop
    end
    local.get 2
    i32.const 272
    i32.add
    global.set 0)
  (func $__original_main (type 9) (result i32)
    (local i32 i64)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i64.const 4614256656552045848
    i64.store offset=2624
    local.get 0
    i32.const 0
    i32.const 128
    call $memset
    local.tee 0
    i64.const 4607182418800017408
    i64.store offset=48
    local.get 0
    i64.const 4607182418800017408
    i64.store offset=32
    local.get 0
    i64.const 4607182418800017408
    i64.store offset=16
    local.get 0
    i64.const 4607182418800017408
    i64.store
    i32.const 10022
    local.get 0
    call $show
    local.get 0
    i32.const 128
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 128
    i32.add
    i32.const 40
    i32.add
    local.get 0
    i32.const 40
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 128
    i32.add
    i32.const 56
    i32.add
    local.get 0
    i32.const 56
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=136
    local.get 0
    local.get 0
    i64.load
    i64.store offset=128
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=144
    local.get 0
    local.get 0
    i64.load offset=32
    i64.store offset=160
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=176
    local.get 0
    i64.load offset=64
    local.set 1
    local.get 0
    i32.const 128
    i32.add
    i32.const 72
    i32.add
    local.get 0
    i32.const 72
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 128
    i32.add
    i32.const 88
    i32.add
    local.get 0
    i32.const 88
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 128
    i32.add
    i32.const 104
    i32.add
    local.get 0
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 128
    i32.add
    i32.const 120
    i32.add
    local.get 0
    i32.const 120
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 1
    i64.store offset=192
    local.get 0
    local.get 0
    i64.load offset=80
    i64.store offset=208
    local.get 0
    local.get 0
    i64.load offset=96
    i64.store offset=224
    local.get 0
    local.get 0
    i64.load offset=112
    i64.store offset=240
    local.get 0
    local.get 0
    i32.const 128
    i32.add
    i32.const 8
    i32.const 1
    call $_fft
    i32.const 10029
    local.get 0
    call $show
    local.get 0
    i32.const 256
    i32.add
    global.set 0
    i32.const 0)
  (func $main (type 3) (param i32 i32) (result i32)
    call $__original_main)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 75824))
  (global (;1;) i32 (i32.const 10276))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 75824))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 2576))
  (global (;7;) i32 (i32.const 2580))
  (global (;8;) i32 (i32.const 2584))
  (global (;9;) i32 (i32.const 2612))
  (global (;10;) i32 (i32.const 2576))
  (global (;11;) i32 (i32.const 2580))
  (global (;12;) i32 (i32.const 10152))
  (global (;13;) i32 (i32.const 10272))
  (global (;14;) i32 (i32.const 2572))
  (global (;15;) i32 (i32.const 10040))
  (global (;16;) i32 (i32.const 7648))
  (global (;17;) i32 (i32.const 10160))
  (global (;18;) i32 (i32.const 9320))
  (global (;19;) i32 (i32.const 2640))
  (global (;20;) i32 (i32.const 2624))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__data_end" (global 1))
  (export "__global_base" (global 2))
  (export "__heap_base" (global 3))
  (export "__dso_handle" (global 4))
  (export "_start" (func $_start))
  (export "__original_main" (func $__original_main))
  (export "__prepare_for_exit" (func $__prepare_for_exit))
  (export "abort" (func $abort))
  (export "fminf" (func $fminf))
  (export "fmaxf" (func $fmaxf))
  (export "fmin" (func $fmin))
  (export "fmax" (func $fmax))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "posix_memalign" (func $posix_memalign))
  (export "aligned_alloc" (func $aligned_alloc))
  (export "malloc_usable_size" (func $malloc_usable_size))
  (export "_Exit" (func $_Exit))
  (export "_exit" (func $_Exit))
  (export "errno" (global 5))
  (export "writev" (func $writev))
  (export "close" (func $close))
  (export "__lseek" (func $__lseek))
  (export "lseek" (func $__lseek))
  (export "__main_void" (func $__main_void))
  (export "__main_argc_argv" (func $__main_argc_argv))
  (export "sbrk" (func $sbrk))
  (export "memset" (func $memset))
  (export "memcpy" (func $memcpy))
  (export "main" (func $main))
  (export "__isatty" (func $__isatty))
  (export "isatty" (func $__isatty))
  (export "__strerror_l" (func $__strerror_l))
  (export "strerror" (func $strerror))
  (export "strerror_l" (func $__strerror_l))
  (export "__funcs_on_exit" (func $dummy))
  (export "__stdio_exit" (func $__stdio_exit))
  (export "exit" (func $exit))
  (export "_fini" (func $dummy))
  (export "__progname" (global 6))
  (export "__progname_full" (global 7))
  (export "__libc" (global 8))
  (export "__hwcap" (global 9))
  (export "program_invocation_short_name" (global 10))
  (export "program_invocation_name" (global 11))
  (export "__ofl_lock" (func $__ofl_lock))
  (export "__ofl_unlock" (func $__ofl_unlock))
  (export "__stdout_used" (global 12))
  (export "__stderr_used" (global 13))
  (export "printf" (func $printf))
  (export "iprintf" (func $printf))
  (export "__small_printf" (func $printf))
  (export "vfprintf" (func $vfprintf))
  (export "__stdin_used" (global 14))
  (export "__stdio_seek" (func $__stdio_seek))
  (export "fputs" (func $fputs))
  (export "fputs_unlocked" (func $fputs))
  (export "__stdio_close" (func $__stdio_close))
  (export "__stdio_exit_needed" (func $__stdio_exit))
  (export "__stdout_FILE" (global 15))
  (export "stdout" (global 16))
  (export "__stdout_write" (func $__stdout_write))
  (export "__towrite" (func $__towrite))
  (export "__towrite_needs_stdio_exit" (func $__towrite_needs_stdio_exit))
  (export "__fwritex" (func $__fwritex))
  (export "fwrite" (func $fwrite))
  (export "fwrite_unlocked" (func $fwrite))
  (export "__stderr_FILE" (global 17))
  (export "stderr" (global 18))
  (export "__stdio_write" (func $__stdio_write))
  (export "strlen" (func $strlen))
  (export "strnlen" (func $strnlen))
  (export "memchr" (func $memchr))
  (export "__lctrans_impl" (func $dummy.1))
  (export "__lctrans" (func $__lctrans))
  (export "__lctrans_cur" (func $__lctrans_cur))
  (export "wctomb" (func $wctomb))
  (export "wcrtomb" (func $wcrtomb))
  (export "__cos" (func $__cos))
  (export "frexp" (func $frexp))
  (export "__math_uflow" (func $__math_uflow))
  (export "__math_xflow" (func $__math_xflow))
  (export "__exp_data" (global 19))
  (export "cos" (func $cos))
  (export "exp" (func $exp))
  (export "sin" (func $sin))
  (export "__math_oflow" (func $__math_oflow))
  (export "__rem_pio2_large" (func $__rem_pio2_large))
  (export "__rem_pio2" (func $__rem_pio2))
  (export "scalbn" (func $scalbn))
  (export "__sin" (func $__sin))
  (export "cexp" (func $cexp))
  (export "__ldexp_cexp" (func $__ldexp_cexp))
  (export "__divdc3" (func $__divdc3))
  (export "__muldc3" (func $__muldc3))
  (export "_fft" (func $_fft))
  (export "fft" (func $fft))
  (export "show" (func $show))
  (export "PI" (global 20))
  (elem (;0;) (i32.const 1) $__stdio_write $__stdio_close $__stdout_write $__stdio_seek)
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 2640) "\fe\82+eG\15g@\00\00\00\00\00\008C\00\00\fa\feB.v\bf:;\9e\bc\9a\f7\0c\bd\bd\fd\ff\ff\ff\ff\df?<TUUUU\c5?\91+\17\cfUU\a5?\17\d0\a4g\11\11\81?\00\00\00\00\00\00\c8B\ef9\fa\feB.\e6?$\c4\82\ff\bd\bf\ce?\b5\f4\0c\d7\08k\ac?\ccPF\d2\ab\b2\83?\84:N\9b\e0\d7U?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\5c\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\5c\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\22PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\09m\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\0a\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\0a\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\224\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\0a\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\09f\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\5c{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\09T\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\09\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\22U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\22^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\09^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\09\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\22CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\0a\e15\d2m<##\e3\19c\c8\ee?c\22b\22\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\0a\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\09\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\5c2\e3\8e<z\d0\ff_\ab \ef?\acY\09\d1\8f\e0\84<K\d1W.\f1'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\22@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?\03\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\83\f9\a2\00DNn\00\fc)\15\00\d1W'\00\dd4\f5\00b\db\c0\00<\99\95\00A\90C\00cQ\fe\00\bb\de\ab\00\b7a\c5\00:n$\00\d2MB\00I\06\e0\00\09\ea.\00\1c\92\d1\00\eb\1d\fe\00)\b1\1c\00\e8>\a7\00\f55\82\00D\bb.\00\9c\e9\84\00\b4&p\00A~_\00\d6\919\00S\839\00\9c\f49\00\8b_\84\00(\f9\bd\00\f8\1f;\00\de\ff\97\00\0f\98\05\00\11/\ef\00\0aZ\8b\00m\1fm\00\cf~6\00\09\cb'\00FO\b7\00\9ef?\00-\ea_\00\ba'u\00\e5\eb\c7\00={\f1\00\f79\07\00\92R\8a\00\fbk\ea\00\1f\b1_\00\08]\8d\000\03V\00{\fcF\00\f0\abk\00 \bc\cf\006\f4\9a\00\e3\a9\1d\00^a\91\00\08\1b\e6\00\85\99e\00\a0\14_\00\8d@h\00\80\d8\ff\00'sM\00\06\061\00\caV\15\00\c9\a8s\00{\e2`\00k\8c\c0\00\19\c4G\00\cdg\c3\00\09\e8\dc\00Y\83*\00\8bv\c4\00\a6\1c\96\00D\af\dd\00\19W\d1\00\a5>\05\00\05\07\ff\003~?\00\c22\e8\00\98O\de\00\bb}2\00&=\c3\00\1ek\ef\00\9f\f8^\005\1f:\00\7f\f2\ca\00\f1\87\1d\00|\90!\00j$|\00\d5n\fa\000-w\00\15;C\00\b5\14\c6\00\c3\19\9d\00\ad\c4\c2\00,MA\00\0c\00]\00\86}F\00\e3q-\00\9b\c6\9a\003b\00\00\b4\d2|\00\b4\a7\97\007U\d5\00\d7>\f6\00\a3\10\18\00Mv\fc\00d\9d*\00p\d7\ab\00c|\f8\00z\b0W\00\17\15\e7\00\c0IV\00;\d6\d9\00\a7\848\00$#\cb\00\d6\8aw\00ZT#\00\00\1f\b9\00\f1\0a\1b\00\19\ce\df\00\9f1\ff\00f\1ej\00\99Wa\00\ac\fbG\00~\7f\d8\00\22e\b7\002\e8\89\00\e6\bf`\00\ef\c4\cd\00l6\09\00]?\d4\00\16\de\d7\00X;\de\00\de\9b\92\00\d2\22(\00(\86\e8\00\e2XM\00\c6\ca2\00\08\e3\16\00\e0}\cb\00\17\c0P\00\f3\1d\a7\00\18\e0[\00.\134\00\83\12b\00\83H\01\00\f5\8e[\00\ad\b0\7f\00\1e\e9\f2\00HJC\00\10g\d3\00\aa\dd\d8\00\ae_B\00ja\ce\00\0a(\a4\00\d3\99\b4\00\06\a6\f2\00\5cw\7f\00\a3\c2\83\00a<\88\00\8asx\00\af\8cZ\00o\d7\bd\00-\a6c\00\f4\bf\cb\00\8d\81\ef\00&\c1g\00U\caE\00\ca\d96\00(\a8\d2\00\c2a\8d\00\12\c9w\00\04&\14\00\12F\9b\00\c4Y\c4\00\c8\c5D\00M\b2\91\00\00\17\f3\00\d4C\ad\00)I\e5\00\fd\d5\10\00\00\be\fc\00\1e\94\cc\00p\ce\ee\00\13>\f5\00\ec\f1\80\00\b3\e7\c3\00\c7\f8(\00\93\05\94\00\c1q>\00.\09\b3\00\0bE\f3\00\88\12\9c\00\ab {\00.\b5\9f\00G\92\c2\00{2/\00\0cUm\00r\a7\90\00k\e7\1f\001\cb\96\00y\16J\00Ay\e2\00\f4\df\89\00\e8\94\97\00\e2\e6\84\00\991\97\00\88\edk\00__6\00\bb\fd\0e\00H\9a\b4\00g\a4l\00qrB\00\8d]2\00\9f\15\b8\00\bc\e5\09\00\8d1%\00\f7t9\000\05\1c\00\0d\0c\01\00K\08h\00,\eeX\00G\aa\90\00t\e7\02\00\bd\d6$\00\f7}\a6\00nHr\00\9f\16\ef\00\8e\94\a6\00\b4\91\f6\00\d1SQ\00\cf\0a\f2\00 \983\00\f5K~\00\b2ch\00\dd>_\00@]\03\00\85\89\7f\00UR)\007d\c0\00m\d8\10\002H2\00[Lu\00Nq\d4\00ETn\00\0b\09\c1\00*\f5i\00\14f\d5\00'\07\9d\00]\04P\00\b4;\db\00\eav\c5\00\87\f9\17\00Ik}\00\1d'\ba\00\96i)\00\c6\cc\ac\00\ad\14T\00\90\e2j\00\88\d9\89\00,rP\00\04\a4\be\00w\07\94\00\f30p\00\00\fc'\00\eaq\a8\00f\c2I\00d\e0=\00\97\dd\83\00\a3?\97\00C\94\fd\00\0d\86\8c\001A\de\00\929\9d\00\ddp\8c\00\17\b7\e7\00\08\df;\00\157+\00\5c\80\a0\00Z\80\93\00\10\11\92\00\0f\e8\d8\00l\80\af\00\db\ffK\008\90\0f\00Y\18v\00b\a5\15\00a\cb\bb\00\c7\89\b9\00\10@\bd\00\d2\f2\04\00Iu'\00\eb\b6\f6\00\db\22\bb\00\0a\14\aa\00\89&/\00d\83v\00\09;3\00\0e\94\1a\00Q:\aa\00\1d\a3\c2\00\af\ed\ae\00\5c&\12\00m\c2M\00-z\9c\00\c0V\97\00\03?\83\00\09\f0\f6\00+@\8c\00m1\99\009\b4\07\00\0c \15\00\d8\c3[\00\f5\92\c4\00\c6\adK\00N\ca\a5\00\a77\cd\00\e6\a96\00\ab\92\94\00\ddBh\00\19c\de\00v\8c\ef\00h\8bR\00\fc\db7\00\ae\a1\ab\00\df\151\00\00\ae\a1\00\0c\fb\da\00dMf\00\ed\05\b7\00)e0\00WV\bf\00G\ff:\00j\f9\b9\00u\be\f3\00(\93\df\00\ab\800\00f\8c\f6\00\04\cb\15\00\fa\22\06\00\d9\e4\1d\00=\b3\a4\00W\1b\8f\006\cd\09\00NB\e9\00\13\be\a4\003#\b5\00\f0\aa\1a\00Oe\a8\00\d2\c1\a5\00\0b?\0f\00[x\cd\00#\f9v\00{\8b\04\00\89\17r\00\c6\a6S\00on\e2\00\ef\eb\00\00\9bJX\00\c4\da\b7\00\aaf\ba\00v\cf\cf\00\d1\02\1d\00\b1\f1-\00\8c\99\c1\00\c3\adw\00\86H\da\00\f7]\a0\00\c6\80\f4\00\ac\f0/\00\dd\ec\9a\00?\5c\bc\00\d0\dem\00\90\c7\1f\00*\db\b6\00\a3%:\00\00\af\9a\00\adS\93\00\b6W\04\00)-\b4\00K\80~\00\da\07\a7\00v\aa\0e\00{Y\a1\00\16\12*\00\dc\b7-\00\fa\e5\fd\00\89\db\fe\00\89\be\fd\00\e4vl\00\06\a9\fc\00>\80p\00\85n\15\00\fd\87\ff\00(>\07\00ag3\00*\18\86\00M\bd\ea\00\b3\e7\af\00\8fmn\00\95g9\001\bf[\00\84\d7H\000\df\16\00\c7-C\00%a5\00\c9p\ce\000\cb\b8\00\bfl\fd\00\a4\00\a2\00\05l\e4\00Z\dd\a0\00!oG\00b\12\d2\00\b9\5c\84\00paI\00kV\e0\00\99R\01\00PU7\00\1e\d5\b7\003\f1\c4\00\13n_\00]0\e4\00\85.\a9\00\1d\b2\c3\00\a126\00\08\b7\a4\00\ea\b1\d4\00\16\f7!\00\8fi\e4\00'\ffw\00\0c\03\80\00\8d@-\00O\cd\a0\00 \a5\99\00\b3\a2\d3\00/]\0a\00\b4\f9B\00\11\da\cb\00}\be\d0\00\9b\db\c1\00\ab\17\bd\00\ca\a2\81\00\08j\5c\00.U\17\00'\00U\00\7f\14\f0\00\e1\07\86\00\14\0bd\00\96A\8d\00\87\be\de\00\da\fd*\00k%\b6\00{\894\00\05\f3\fe\00\b9\bf\9e\00hjO\00J*\a8\00O\c4Z\00-\f8\bc\00\d7Z\98\00\f4\c7\95\00\0dM\8d\00 :\a6\00\a4W_\00\14?\b1\00\808\95\00\cc \01\00q\dd\86\00\c9\de\b6\00\bf`\f5\00Me\11\00\01\07k\00\8c\b0\ac\00\b2\c0\d0\00QUH\00\1e\fb\0e\00\95r\c3\00\a3\06;\00\c0@5\00\06\dc{\00\e0E\cc\00N)\fa\00\d6\ca\c8\00\e8\f3A\00|d\de\00\9bd\d8\00\d9\be1\00\a4\97\c3\00wX\d4\00i\e3\c5\00\f0\da\13\00\ba:<\00F\18F\00Uu_\00\d2\bd\f5\00n\92\c6\00\ac.]\00\0eD\ed\00\1c>B\00a\c4\87\00)\fd\e9\00\e7\d6\f3\00\22|\ca\00o\915\00\08\e0\c5\00\ff\d7\8d\00nj\e2\00\b0\fd\c6\00\93\08\c1\00|]t\00k\ad\b2\00\cdn\9d\00>r{\00\c6\11j\00\f7\cf\a9\00)s\df\00\b5\c9\ba\00\b7\00Q\00\e2\b2\0d\00t\ba$\00\e5}`\00t\d8\8a\00\0d\15,\00\81\18\0c\00~f\94\00\01)\16\00\9fzv\00\fd\fd\be\00VE\ef\00\d9~6\00\ec\d9\13\00\8b\ba\b9\00\c4\97\fc\001\a8'\00\f1n\c3\00\94\c56\00\d8\a8V\00\b4\a8\b5\00\cf\cc\0e\00\12\89-\00oW4\00,V\89\00\99\ce\e3\00\d6 \b9\00k^\aa\00>*\9c\00\11_\cc\00\fd\0bJ\00\e1\f4\fb\00\8e;m\00\e2\86,\00\e9\d4\84\00\fc\b4\a9\00\ef\ee\d1\00.5\c9\00/9a\008!D\00\1b\d9\c8\00\81\fc\0a\00\fbJj\00/\1c\d8\00S\b4\84\00N\99\8c\00T\22\cc\00*U\dc\00\c0\c6\d6\00\0b\19\96\00\1ap\b8\00i\95d\00&Z`\00?R\ee\00\7f\11\0f\00\f4\b5\11\00\fc\cb\f5\004\bc-\004\bc\ee\00\e8]\cc\00\dd^`\00g\8e\9b\00\923\ef\00\c9\17\b8\00aX\9b\00\e1W\bc\00Q\83\c6\00\d8>\10\00\ddqH\00-\1c\dd\00\af\18\a1\00!,F\00Y\f3\d7\00\d9z\98\00\9eT\c0\00O\86\fa\00V\06\fc\00\e5y\ae\00\89\226\008\ad\22\00g\93\dc\00U\e8\aa\00\82&8\00\ca\e7\9b\00Q\0d\a4\00\993\b1\00\a9\d7\0e\00i\05H\00e\b2\f0\00\7f\88\a7\00\88L\97\00\f9\d16\00!\92\b3\00{\82J\00\98\cf!\00@\9f\dc\00\dcGU\00\e1t:\00g\ebB\00\fe\9d\df\00^\d4_\00{g\a4\00\ba\acz\00U\f6\a2\00+\88#\00A\baU\00Yn\08\00!*\86\009G\83\00\89\e3\e6\00\e5\9e\d4\00I\fb@\00\ffV\e9\00\1c\0f\ca\00\c5Y\8a\00\94\fa+\00\d3\c1\c5\00\0f\c5\cf\00\dbZ\ae\00G\c5\86\00\85Cb\00!\86;\00,y\94\00\10a\87\00*L{\00\80,\1a\00C\bf\12\00\88&\90\00x<\89\00\a8\c4\e4\00\e5\db{\00\c4:\c2\00&\f4\ea\00\f7g\8a\00\0d\92\bf\00e\a3+\00=\93\b1\00\bd|\0b\00\a4Q\dc\00'\ddc\00i\e1\dd\00\9a\94\19\00\a8)\95\00h\ce(\00\09\ed\b4\00D\9f \00N\98\ca\00p\82c\00~|#\00\0f\b92\00\a7\f5\8e\00\14V\e7\00!\f1\08\00\b5\9d*\00o~M\00\a5\19Q\00\b5\f9\ab\00\82\df\d6\00\96\dda\00\166\02\00\c4:\9f\00\83\a2\a1\00r\edm\009\8dz\00\82\b8\a9\00k2\5c\00F'[\00\004\ed\00\d2\00w\00\fc\f4U\00\01YM\00\e0q\80\00\00\00\00\00\00\00\00\00\00\00\00@\fb!\f9?\00\00\00\00-Dt>\00\00\00\80\98F\f8<\00\00\00`Q\ccx;\00\00\00\80\83\1b\f09\00\00\00@ %z8\00\00\00\80\22\82\e36\00\00\00\00\1d\f3i58'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\12D;\02?,G\14=30\0a\1b\06FKE7\0fI\0e\17\03@\1d<+6\1fJ-\1c\01 %)!\08\0c\15\16\22.\108>\0b41\18/A\099\11#C2B:\05\04&('\0d*\1e5\07\1aH\13$L\ff\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00No error information\00\00\00\00\b0'\00\00-+   0X0x\00(null)\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00%s\00%g \00(%g, %g) \00Data: \00\0aFFT : \00")
  (data (;2;) (i32.const 10040) "\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\08\06\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008'\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00@\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\b0'\00\00"))
