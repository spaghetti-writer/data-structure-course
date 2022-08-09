require 'benchmark'

class First < Struct.new(:first_id, :name, :last_name); end
class Second < Struct.new(:id, :month_1, :month_2, :month_3, :month_4); end

# Funciones
def raw_function(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
    total = 0
    _second_col.each do |si|
      if fi.first_id == si.id
        for mes in 1..4 do 
          total += si["month_#{mes}"]
        end
      end
    end
    totales << total
  end
  totales
end

def raw_function_compact(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
      total = 0
      sec = nil 
      _second_col.each { |si| sec = si if si.id == fi.first_id }
      for mes in 1..4 do 
          total += sec["month_#{mes}"]
      end
      totales << total
  end
  totales
end

def raw_function_break(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
    total = 0
    _second_col.each do |si|
      if fi.first_id == si.id
        for mes in 1..4 do 
          total += si["month_#{mes}"]
        end
        break
      end
    end
    totales << total
  end
  totales
end

def using_detect(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
    total = 0 
    si = _second_col.detect { |item| fi.first_id == item.id }
    for mes in 1..4 do 
      total += si["month_#{mes}"]
    end
    totales << total
  end
  totales
end

def using_detect_with_validation(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
    total = 0 
    si = _second_col.detect { |item| fi.first_id == item.id }
    unless si.nil?
      for mes in 1..4 do 
        total += si["month_#{mes}"]
      end
    end 
    totales << total 
  end
  totales
end

def using_map(_first_col, _second_col)
  totales = []
  _first_col.each do |fi|
    total = 0 
    si = nil
    _second_col.map { |item| si = item if fi.first_id == item.id }
    for mes in 1..4 do 
      total += si["month_#{mes}"]
    end
  end
  totales
end

# Datos
first_collection = []
20000.times do |index|
  first_collection << First.new((index + 1),"first_#{index}","user")
end

second_collection = []
first_collection.each { |i| second_collection << Second.new(i.first_id, 1, 2, 3, 4) }

# Pruebas
Benchmark.bm do |x|
  x.report("# ") {
    # @output = raw_function(first_collection, second_collection)
    # @output = raw_function_compact(first_collection, second_collection)
    # @output = raw_function_break(first_collection, second_collection)
    # @output = using_detect(first_collection, second_collection)
    # @output = using_detect_with_validation(first_collection, second_collection)
    # @output = using_map(first_collection, second_collection)
  }
end

p ""
p ""
p ""
p @output.count

# Resultados de benchmark - test con 200 items

# Empty
# user     system      total        real
#   0.000006   0.000001   0.000007 (  0.000003)

# Raw
# user     system      total        real
#   0.004178   0.000045   0.004223 (  0.004224) 1
#   0.003489   0.000000   0.003489 (  0.003560) 2
#   0.003777   0.000000   0.003777 (  0.003780) 3
#   0.003752   0.000000   0.003752 (  0.003758) 4
#   0.003476   0.000000   0.003476 (  0.003479) 5

# Raw compact
# user     system      total        real
#   0.003567   0.000000   0.003567 (  0.003570) 1
#   0.003331   0.000000   0.003331 (  0.003334) 2
#   0.003845   0.000000   0.003845 (  0.003846) 3
#   0.003498   0.000000   0.003498 (  0.003504) 4
#   0.004990   0.000207   0.005197 (  0.005207) 5

# Raw with break
# user     system      total        real
#   0.002520   0.000000   0.002520 (  0.002527) 1
#   0.002053   0.000000   0.002053 (  0.002055) 2
#   0.002264   0.000000   0.002264 (  0.002264) 3
#   0.001928   0.000138   0.002066 (  0.002067) 4
#   0.002619   0.000000   0.002619 (  0.002623) 5

# using detect
# user     system      total        real
#   0.001837   0.000263   0.002100 (  0.002099) 1
#   0.001796   0.000414   0.002210 (  0.002211) 2
#   0.001728   0.000576   0.002304 (  0.002305) 3
#   0.002279   0.000325   0.002604 (  0.002607) 4
#   0.002617   0.000000   0.002617 (  0.002724) 5

# using_detect_with_validation
# user     system      total        real
#   0.002604   0.000000   0.002604 (  0.002605) 1 
#   0.002857   0.000000   0.002857 (  0.002859) 2
#   0.002606   0.000000   0.002606 (  0.002604) 3
#   0.003019   0.000000   0.003019 (  0.003023) 4
#   0.002452   0.000000   0.002452 (  0.002458) 5


# using map
# user     system      total        real
#   0.004287   0.000049   0.004336 (  0.004337) 1
#   0.004396   0.000096   0.004492 (  0.004504) 2
#   0.004613   0.000130   0.004743 (  0.004745) 3
#   0.005668   0.000230   0.005898 (  0.005911) 4
#   0.004417   0.000160   0.004577 (  0.004594) 5

######### Resultados de benchmark - test con 5000 items #######

# Empty
# user     system      total        real
#   0.000006   0.000001   0.000007 (  0.000003)
#   0.000008   0.000002   0.000010 (  0.000002)

# Raw
# user     system      total        real
#   2.078270   0.000487   2.078757 (  2.079350)
#   1.968588   0.000031   1.968619 (  1.969287)
#   1.985194   0.000000   1.985194 (  1.985827)
#   1.990389   0.000000   1.990389 (  1.991079)
#   2.176964   0.000000   2.176964 (  2.177788)

# Raw compact
# user     system      total        real
#   1.924898   0.000845   1.925743 (  1.926251)
#   1.915279   0.000000   1.915279 (  1.916024)
#   1.934223   0.000257   1.934480 (  1.935239)
#   1.963237   0.000104   1.963341 (  1.964059)
#   2.094506   0.000106   2.094612 (  2.095366)

# Raw with break
# user     system      total        real
#   0.996092   0.000000   0.996092 (  0.996356)
#   0.972365   0.000440   0.972805 (  0.973117)
#   0.976165   0.003927   0.980092 (  0.980405)
#   0.946572   0.000183   0.946755 (  0.947109)
#   1.023037   0.000000   1.023037 (  1.023340)

# using detect
# user     system      total        real
#   1.348144   0.000000   1.348144 (  1.348792)
#   1.069927   0.000000   1.069927 (  1.070265)
#   1.106849   0.000000   1.106849 (  1.107209)
#   1.386899   0.000000   1.386899 (  1.387465)
#   1.113742   0.000671   1.114413 (  1.114845)

# using_detect_with_validation
# user     system      total        real
#   1.136736   0.000018   1.136754 (  1.137129)
#   1.080743   0.000000   1.080743 (  1.081047)
#   1.365424   0.000000   1.365424 (  1.365954)
#   1.329445   0.000000   1.329445 (  1.330039)
#   1.111363   0.000144   1.111507 (  1.111929)

# using map
# user     system      total        real
#   2.502125   0.008427   2.510552 (  2.511558)
#   2.343698   0.012024   2.355722 (  2.356720)
#   1.998642   0.012058   2.010700 (  2.012820)
#   2.227541   0.003831   2.231372 (  2.233423)
#   2.217411   0.007853   2.225264 (  2.226164)

######### Resultados de benchmark - test con 20000 items #######

# Empty
# user     system      total        real
#   0.000006   0.000001   0.000007 (  0.000003)
#   0.000008   0.000002   0.000010 (  0.000002)

# Raw
# user     system      total        real
#  31.641527   0.007789  31.649316 ( 31.662269)
#  31.728550   0.000000  31.728550 ( 31.738251)
#  30.908788   0.008091  30.916879 ( 30.933017)
#  34.783190   0.000000  34.783190 ( 34.793386)
#  31.623732   0.000000  31.623732 ( 31.633952)

# Raw compact
# user     system      total        real
#  30.289546   0.004045  30.293591 ( 30.302926)
#  32.946389   0.008511  32.954900 ( 32.976321)
#  30.533582   0.016052  30.549634 ( 30.561818)
#  30.442054   0.011697  30.453751 ( 30.467446)
#  32.033079   0.007973  32.041052 ( 32.071345)

# Raw with break
# user     system      total        real
#  15.873668   0.000221  15.873889 ( 15.881965)
#  15.896439   0.008027  15.904466 ( 15.909470)
#  17.176912   0.007860  17.184772 ( 17.196254)
#  15.509135   0.000104  15.509239 ( 15.513900)
#  16.229221   0.000047  16.229268 ( 16.238777)

# using detect
# user     system      total        real
#  17.830418   0.000000  17.830418 ( 17.844247)
#  16.935312   0.004182  16.939494 ( 16.944594)
#  17.256348   0.004139  17.260487 ( 17.269426)
#  17.032231   0.000000  17.032231 ( 17.037384)
#  17.290250   0.000252  17.290502 ( 17.301153)

# using_detect_with_validation
# user     system      total        real
#  17.506263   0.000114  17.506377 ( 17.519246)
#  17.460166   0.016090  17.476256 ( 17.489822)
#  18.574330   0.003902  18.578232 ( 18.584484)
#  17.642991   0.000273  17.643264 ( 17.655441)
#  17.092473   0.004020  17.096493 ( 17.102671)

# using map
# user     system      total        real
#  33.837509   0.048000  33.885509 ( 33.913435)
#  36.652539   0.035879  36.688418 ( 36.702212)
#  36.754240   0.024022  36.778262 ( 36.799103)
#  35.875019   0.019995  35.895014 ( 35.908675)
#  34.969238   0.051764  35.021002 ( 35.034785)