import 'package:f86/f86.dart';

/// 寄存器
class CpuRegisters {
  /// 累加寄存器
  final ax = 0.rw(RW16Bit());
  late final ah = ax(RW16BitHigh());
  late final al = ax(RW16BitLow());

  /// 基地址寄存器
  /// 段地址默认使用DS的值
  final bx = 0.rw(RW16Bit());
  late final bh = bx(RW16BitHigh());
  late final bl = bx(RW16BitLow());

  /// 计数寄存器
  final cx = 0.rw(RW16Bit());
  late final ch = cx(RW16BitHigh());
  late final cl = cx(RW16BitLow());

  /// 数据寄存器
  final dx = 0.rw(RW16Bit());
  late final dh = dx(RW16BitHigh());
  late final dl = dx(RW16BitLow());

  /// 堆栈指针寄存器
  final sp = 0.rw(RW16Bit());

  /// 基指针寄存器
  /// 段地址默认使用SS的值
  final bp = 0.rw(RW16Bit());

  /// 源变址寄存器
  /// 段地址默认使用DS的值
  final si = 0.rw(RW16Bit());

  /// 目的地址寄存器
  /// 段地址默认使用DS的值
  final di = 0.rw(RW16Bit());

  /// 数据段寄存器
  final ds = 0.rw(RW16Bit());

  /// 附加段寄存器
  final es = 0.rw(RW16Bit());

  /// 堆栈段寄存器
  final ss = 0.rw(RW16Bit());

  /// 代码段寄存器
  final cs = 0.rw(RW16Bit());

  /// 指令指针寄存器
  final ip = 0.rw(RW16Bit());

  /// 标志寄存器
  final _flag = 0.rw(RW16Bit());

  /// 进位标志
  late final c = _flag(RWIndexBit(CpuRegisterFlag.c.index));

  /// 奇偶标志
  late final p = _flag(RWIndexBit(CpuRegisterFlag.p.index));

  /// 借位标志
  late final a = _flag(RWIndexBit(CpuRegisterFlag.a.index));

  /// 零标志
  late final z = _flag(RWIndexBit(CpuRegisterFlag.z.index));

  /// 符号标志
  late final s = _flag(RWIndexBit(CpuRegisterFlag.s.index));

  /// 单步标志
  late final t = _flag(RWIndexBit(CpuRegisterFlag.t.index));

  /// 中断标志
  late final i = _flag(RWIndexBit(CpuRegisterFlag.i.index));

  /// 方向标志
  late final d = _flag(RWIndexBit(CpuRegisterFlag.d.index));

  /// 溢出标志
  late final o = _flag(RWIndexBit(CpuRegisterFlag.o.index));
}

/// 标志寄存器
enum CpuRegisterFlag {
  /// 进位标志
  c('C'),

  /// 保留位
  _r1('_'),

  /// 奇偶标志
  p('P'),

  /// 保留位
  _r3('_'),

  /// 借位标志
  a('A'),

  /// 保留位
  _r5('_'),

  /// 零标志
  z('Z'),

  /// 符号标志
  s('S'),

  /// 单步标志
  t('T'),

  /// 中断标志
  i('I'),

  /// 方向标志
  d('D'),

  /// 溢出标志
  o('O'),

  /// 保留位
  _r12('_'),

  /// 保留位
  _r13('_'),

  /// 保留位
  _r14('_'),

  /// 保留位
  _r15('_');

  final String name;

  const CpuRegisterFlag(this.name);
}
