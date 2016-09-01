for i in {0..20} ; do                                            
  { time git ls-remote git@gitlab.com:gitlab-org/gitlab-development-kit.git ; } 2>&1
done | awk 'BEGIN {total=0 ; max=0 ; min=1} /^git/ {if($10 > max) max = $10} {if ($10 != "" && $10 < min) min=$10} {total+=$10} END {print "total " total " avg " total/20 " min " min " max " max}'