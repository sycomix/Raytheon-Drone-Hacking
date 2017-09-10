.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$ThreadHashCode;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 144
    new-instance v2, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v2}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 147
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 305
    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 306
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 307
    .local v1, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 309
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "busy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 328
    .local v1, "se":Ljava/lang/SecurityException;
    :goto_0
    return-object v2

    .line 326
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_0
    move-exception v1

    .line 328
    .restart local v1    # "se":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v2}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 9
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 175
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    .prologue
    .line 182
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 5
    .param p1, "initialValue"    # J

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 288
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 289
    if-eqz v1, :cond_1

    .line 290
    array-length v3, v1

    .line 291
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 292
    aget-object v0, v1, v2

    .line 293
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 294
    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 291
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .locals 23
    .param p1, "x"    # J
    .param p3, "hc"    # Lcom/google/common/cache/Striped64$HashCode;
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 208
    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 209
    .local v10, "h":I
    const/4 v8, 0x0

    .line 212
    .local v8, "collide":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v7, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_c

    array-length v15, v7

    .local v15, "n":I
    if-lez v15, :cond_c

    .line 213
    add-int/lit8 v20, v15, -0x1

    and-int v20, v20, v10

    aget-object v6, v7, v20

    .local v6, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v6, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 215
    new-instance v16, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 216
    .local v16, "r":Lcom/google/common/cache/Striped64$Cell;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 217
    const/4 v9, 0x0

    .line 220
    .local v9, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .local v17, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v14, v0

    .local v14, "m":I
    if-lez v14, :cond_1

    add-int/lit8 v20, v14, -0x1

    and-int v13, v20, v10

    .local v13, "j":I
    aget-object v20, v17, v13

    if-nez v20, :cond_1

    .line 223
    aput-object v16, v17, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v9, 0x1

    .line 227
    .end local v13    # "j":I
    .end local v14    # "m":I
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 229
    if-eqz v9, :cond_0

    .line 280
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v9    # "created":Z
    .end local v15    # "n":I
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_2
    :goto_1
    move-object/from16 v0, p3

    iput v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 281
    return-void

    .line 227
    .restart local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v9    # "created":Z
    .restart local v15    # "n":I
    .restart local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    :catchall_0
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 234
    .end local v9    # "created":Z
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    :cond_3
    const/4 v8, 0x0

    .line 258
    :cond_4
    :goto_2
    shl-int/lit8 v20, v10, 0xd

    xor-int v10, v10, v20

    .line 259
    ushr-int/lit8 v20, v10, 0x11

    xor-int v10, v10, v20

    .line 260
    shl-int/lit8 v20, v10, 0x5

    xor-int v10, v10, v20

    goto :goto_0

    .line 236
    :cond_5
    if-nez p4, :cond_6

    .line 237
    const/16 p4, 0x1

    goto :goto_2

    .line 238
    :cond_6
    iget-wide v0, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v18, v0

    .local v18, "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v20

    if-nez v20, :cond_2

    .line 240
    sget v20, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v7, :cond_8

    .line 241
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 242
    :cond_8
    if-nez v8, :cond_9

    .line 243
    const/4 v8, 0x1

    goto :goto_2

    .line 244
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 246
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_b

    .line 247
    shl-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 248
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v15, :cond_a

    .line 249
    aget-object v20, v7, v11

    aput-object v20, v17, v11

    .line 248
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 250
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v11    # "i":I
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 255
    const/4 v8, 0x0

    .line 256
    goto/16 :goto_0

    .line 253
    :catchall_1
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 262
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "n":I
    .end local v18    # "v":J
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 263
    const/4 v12, 0x0

    .line 265
    .local v12, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_d

    .line 266
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 267
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v20, v10, 0x1

    new-instance v21, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v21, v17, v20

    .line 268
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 269
    const/4 v12, 0x1

    .line 272
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 274
    if-eqz v12, :cond_0

    goto/16 :goto_1

    .line 272
    :catchall_2
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 277
    .end local v12    # "init":Z
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v18, v0

    .restart local v18    # "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v20

    if-eqz v20, :cond_0

    goto/16 :goto_1
.end method
