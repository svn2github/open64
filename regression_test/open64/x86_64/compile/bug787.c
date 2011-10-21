//OBJ
typedef unsigned int __u32;
typedef unsigned char u8;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef __u32 __be32;
static inline __attribute__((__const__)) __u32 __arch_swab32(__u32 val) {
  asm("bswapl %0"      : "=r" (val)      : "0" (val));
  return val;
}
static inline __attribute__((__const__)) __u32 __fswab32(__u32 val) {
  return __arch_swab32(val);
};
u32 ethtool_op_get_link(struct net_device *dev);
int ethtool_op_set_sg(struct net_device *dev, u32 data);
struct ethtool_ops {
  int (*get_settings)(struct net_device *, struct ethtool_cmd *);
  int (*set_settings)(struct net_device *, struct ethtool_cmd *);
  void (*get_drvinfo)(struct net_device *, struct ethtool_drvinfo *);
  int (*get_regs_len)(struct net_device *);
  void (*get_regs)(struct net_device *, struct ethtool_regs *, void *);
  void (*get_wol)(struct net_device *, struct ethtool_wolinfo *);
  int (*set_wol)(struct net_device *, struct ethtool_wolinfo *);
  u32 (*get_msglevel)(struct net_device *);
  void (*set_msglevel)(struct net_device *, u32);
  int (*nway_reset)(struct net_device *);
  u32 (*get_link)(struct net_device *);
  int (*get_eeprom_len)(struct net_device *);
  int (*get_eeprom)(struct net_device *, struct ethtool_eeprom *, u8 *);
  int (*set_eeprom)(struct net_device *, struct ethtool_eeprom *, u8 *);
  int (*get_coalesce)(struct net_device *, struct ethtool_coalesce *);
  int (*set_coalesce)(struct net_device *, struct ethtool_coalesce *);
  void (*get_ringparam)(struct net_device *, struct ethtool_ringparam *);
  int (*set_ringparam)(struct net_device *, struct ethtool_ringparam *);
  void (*get_pauseparam)(struct net_device *, struct ethtool_pauseparam*);
  int (*set_pauseparam)(struct net_device *, struct ethtool_pauseparam*);
  u32 (*get_rx_csum)(struct net_device *);
  int (*set_rx_csum)(struct net_device *, u32);
  int (*set_tx_csum)(struct net_device *, u32);
  int (*set_sg)(struct net_device *, u32);
  int (*set_tso)(struct net_device *, u32);
  void (*self_test)(struct net_device *, struct ethtool_test *, u64 *);
  void (*get_strings)(struct net_device *, u32 stringset, u8 *);
  int (*phys_id)(struct net_device *, u32);
  void (*get_ethtool_stats)(struct net_device *, struct ethtool_stats *, u64 *);
  int (*get_sset_count)(struct net_device *, int);
};
struct tg3 {
  void (*write32) (struct tg3 *, u32, u32);
  u32 tg3_flags;
};
static const struct {
}
  ethtool_test_keys[6] = {
    {
      "nvram test     (online) " }
    , };
static int tg3_get_regs_len(struct net_device *dev) {
}
static void tg3_get_regs(struct net_device *dev,   struct ethtool_regs *regs, void *_p) {
}
static int tg3_get_eeprom_len(struct net_device *dev) {
}
static int tg3_get_eeprom(struct net_device *dev, struct ethtool_eeprom *eeprom, u8 *data) {
}
static int tg3_nvram_write_block(struct tg3 *tp, u32 offset, u32 len, u8 *buf);
static int tg3_set_eeprom(struct net_device *dev, struct ethtool_eeprom *eeprom, u8 *data) {
  struct tg3 *tp = netdev_priv(dev);
  int ret;
  u32 offset, len, b_offset, odd_len;
  u8 *buf;
  ret = tg3_nvram_write_block(tp, offset, len, buf);
}
static int tg3_get_settings(struct net_device *dev, struct ethtool_cmd *cmd) {
}
static int tg3_set_settings(struct net_device *dev, struct ethtool_cmd *cmd) {
}
static void tg3_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info) {
}
static void tg3_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol) {
}
static int tg3_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol) {
}
static u32 tg3_get_msglevel(struct net_device *dev) {
}
static void tg3_set_msglevel(struct net_device *dev, u32 value) {
}
static int tg3_set_tso(struct net_device *dev, u32 value) {
}
static int tg3_nway_reset(struct net_device *dev) {
}
static void tg3_get_ringparam(struct net_device *dev, struct ethtool_ringparam *ering) {
}
static int tg3_set_ringparam(struct net_device *dev, struct ethtool_ringparam *ering) {
}
static void tg3_get_pauseparam(struct net_device *dev, struct ethtool_pauseparam *epause) {
}
static int tg3_set_pauseparam(struct net_device *dev, struct ethtool_pauseparam *epause) {
}
static u32 tg3_get_rx_csum(struct net_device *dev) {
}
static int tg3_set_rx_csum(struct net_device *dev, u32 data) {
}
static int tg3_set_tx_csum(struct net_device *dev, u32 data) {
}
static int tg3_get_sset_count (struct net_device *dev, int sset) {
}
static void tg3_get_strings (struct net_device *dev, u32 stringset, u8 *buf) {
}
static int tg3_phys_id(struct net_device *dev, u32 data) {
}
static void tg3_get_ethtool_stats (struct net_device *dev,        struct ethtool_stats *estats, u64 *tmp_stats) {
}
static void tg3_self_test(struct net_device *dev, struct ethtool_test *etest,      u64 *data) {
}
static int tg3_get_coalesce(struct net_device *dev, struct ethtool_coalesce *ec) {
}
static int tg3_set_coalesce(struct net_device *dev, struct ethtool_coalesce *ec) {
}
static const struct ethtool_ops tg3_ethtool_ops = {
  .get_settings = tg3_get_settings,  .set_settings = tg3_set_settings,  .get_drvinfo = tg3_get_drvinfo,  .get_regs_len = tg3_get_regs_len,  .get_regs = tg3_get_regs,  .get_wol = tg3_get_wol,  .set_wol = tg3_set_wol,  .get_msglevel = tg3_get_msglevel,  .set_msglevel = tg3_set_msglevel,  .nway_reset = tg3_nway_reset,  .get_link = ethtool_op_get_link,  .get_eeprom_len = tg3_get_eeprom_len,  .get_eeprom = tg3_get_eeprom,  .set_eeprom = tg3_set_eeprom,  .get_ringparam = tg3_get_ringparam,  .set_ringparam = tg3_set_ringparam,  .get_pauseparam = tg3_get_pauseparam,  .set_pauseparam = tg3_set_pauseparam,  .get_rx_csum = tg3_get_rx_csum,  .set_rx_csum = tg3_set_rx_csum,  .set_tx_csum = tg3_set_tx_csum,  .set_sg = ethtool_op_set_sg,  .set_tso = tg3_set_tso,  .self_test = tg3_self_test,  .get_strings = tg3_get_strings,  .phys_id = tg3_phys_id,  .get_ethtool_stats = tg3_get_ethtool_stats,  .get_coalesce = tg3_get_coalesce,  .set_coalesce = tg3_set_coalesce,  .get_sset_count = tg3_get_sset_count, };
static int tg3_nvram_write_block_using_eeprom(struct tg3 *tp,         u32 offset, u32 len, u8 *buf) {
  int i, j, rc = 0;
  for (i = 0;
       i < len;
       i += 4) {
    __be32 data;
    tp->write32(tp, 0x0000683c, (__builtin_constant_p((__u32)((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data))))) ? ((__u32)( (((__u32)((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data)))) & (__u32)0x000000ffUL) << 24) | (((__u32)((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data)))) & (__u32)0x0000ff00UL) << 8) | (((__u32)((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data)))) & (__u32)0x00ff0000UL) >> 8) | (((__u32)((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data)))) & (__u32)0xff000000UL) >> 24))) : __fswab32((__builtin_constant_p((__u32)(( __u32)(__be32)(data))) ? ((__u32)( (((__u32)(( __u32)(__be32)(data)) & (__u32)0x000000ffUL) << 24) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x0000ff00UL) << 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0x00ff0000UL) >> 8) | (((__u32)(( __u32)(__be32)(data)) & (__u32)0xff000000UL) >> 24))) : __fswab32(( __u32)(__be32)(data))))));
    for (j = 0;
         j < 1000;                                                                                                                                                                                                                                                                         j++) {
                                                              }
                                                              }
                                                      }
                                 static int tg3_nvram_write_block(struct tg3 *tp, u32 offset, u32 len, u8 *buf) {
                                   int ret;
                                   if (!(tp->tg3_flags & 0x00002000)) {
                                     ret = tg3_nvram_write_block_using_eeprom(tp, offset, len, buf);
                                 }
                                 }
