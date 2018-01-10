
include $(BUILD_SYSTEM)/clang/x86_64.mk

CLANG_CONFIG_x86_64_HOST_CROSS_TRIPLE := x86_64-pc-mingw32

CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_ASFLAGS := \
  $(CLANG_CONFIG_EXTRA_ASFLAGS) \
  $(CLANG_CONFIG_HOST_CROSS_EXTRA_ASFLAGS) \
  $(CLANG_CONFIG_x86_64_EXTRA_ASFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_COMBO_EXTRA_ASFLAGS) \
  -target $(CLANG_CONFIG_x86_64_HOST_CROSS_TRIPLE)

CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CFLAGS := \
  $(CLANG_CONFIG_EXTRA_CFLAGS) \
  $(CLANG_CONFIG_HOST_CROSS_EXTRA_CFLAGS) \
  $(CLANG_CONFIG_x86_64_EXTRA_CFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_COMBO_EXTRA_CFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_ASFLAGS)

CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CONLYFLAGS := \
  $(CLANG_CONFIG_EXTRA_CONLYFLAGS) \
  $(CLANG_CONFIG_HOST_CROSS_EXTRA_CONLYFLAGS) \
  $(CLANG_CONFIG_x86_64_EXTRA_CONLYFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_COMBO_EXTRA_CONLYFLAGS)

CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CPPFLAGS := \
  $(CLANG_CONFIG_EXTRA_CPPFLAGS) \
  $(CLANG_CONFIG_HOST_CROSS_EXTRA_CPPFLAGS) \
  $(CLANG_CONFIG_x86_64_EXTRA_CPPFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_COMBO_EXTRA_CPPFLAGS) \
  -target $(CLANG_CONFIG_x86_64_HOST_CROSS_TRIPLE)

CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_LDFLAGS := \
  $(CLANG_CONFIG_EXTRA_LDFLAGS) \
  $(CLANG_CONFIG_HOST_CROSS_EXTRA_LDFLAGS) \
  $(CLANG_CONFIG_x86_64_EXTRA_LDFLAGS) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_COMBO_EXTRA_LDFLAGS) \
  -target $(CLANG_CONFIG_x86_64_HOST_CROSS_TRIPLE)

$(clang_2nd_arch_prefix)CLANG_HOST_CROSS_GLOBAL_CFLAGS := \
  $(call convert-to-host-clang-flags,$($(clang_2nd_arch_prefix)HOST_CROSS_GLOBAL_CFLAGS)) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CFLAGS)

$(clang_2nd_arch_prefix)CLANG_HOST_CROSS_GLOBAL_CONLYFLAGS := \
  $(call convert-to-host-clang-flags,$($(clang_2nd_arch_prefix)HOST_CROSS_GLOBAL_CONLYFLAGS)) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CONLYFLAGS)

$(clang_2nd_arch_prefix)CLANG_HOST_CROSS_GLOBAL_CPPFLAGS := \
  $(call convert-to-host-clang-flags,$($(clang_2nd_arch_prefix)HOST_CROSS_GLOBAL_CPPFLAGS)) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_CPPFLAGS)

$(clang_2nd_arch_prefix)CLANG_HOST_CROSS_GLOBAL_LDFLAGS := \
  $(call convert-to-host-clang-flags,$($(clang_2nd_arch_prefix)HOST_CROSS_GLOBAL_LDFLAGS)) \
  $(CLANG_CONFIG_x86_64_HOST_CROSS_EXTRA_LDFLAGS)

$(clang_2nd_arch_prefix)HOST_CROSS_LIBPROFILE_RT := $(LLVM_RTLIB_PATH)/libclang_rt.profile-x86_64.a
