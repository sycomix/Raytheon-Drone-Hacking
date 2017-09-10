.class final enum Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnsafeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final littleEndian:Z

.field static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 293
    new-array v0, v3, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 297
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->littleEndian:Z

    .line 325
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;

    invoke-direct {v0}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    .line 343
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    .line 346
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 347
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 24
    .param p1, "left"    # [B
    .param p2, "right"    # [B

    .prologue
    .line 352
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 353
    .local v7, "minLength":I
    div-int/lit8 v10, v7, 0x8

    .line 360
    .local v10, "minWords":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    mul-int/lit8 v17, v10, 0x8

    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 361
    sget-object v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v18, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 362
    .local v8, "lw":J
    sget-object v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v18, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    .line 363
    .local v14, "rw":J
    xor-long v4, v8, v14

    .line 365
    .local v4, "diff":J
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-eqz v17, :cond_5

    .line 366
    sget-boolean v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->littleEndian:Z

    if-nez v17, :cond_1

    .line 367
    invoke-static {v8, v9, v14, v15}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v12

    .line 401
    .end local v4    # "diff":J
    .end local v8    # "lw":J
    .end local v14    # "rw":J
    :cond_0
    :goto_1
    return v12

    .line 371
    .restart local v4    # "diff":J
    .restart local v8    # "lw":J
    .restart local v14    # "rw":J
    :cond_1
    const/4 v11, 0x0

    .line 373
    .local v11, "n":I
    long-to-int v13, v4

    .line 374
    .local v13, "x":I
    if-nez v13, :cond_2

    .line 375
    const/16 v17, 0x20

    ushr-long v18, v4, v17

    move-wide/from16 v0, v18

    long-to-int v13, v0

    .line 376
    const/16 v11, 0x20

    .line 379
    :cond_2
    shl-int/lit8 v16, v13, 0x10

    .line 380
    .local v16, "y":I
    if-nez v16, :cond_4

    .line 381
    add-int/lit8 v11, v11, 0x10

    .line 386
    :goto_2
    shl-int/lit8 v16, v13, 0x8

    .line 387
    if-nez v16, :cond_3

    .line 388
    add-int/lit8 v11, v11, 0x8

    .line 390
    :cond_3
    ushr-long v18, v8, v11

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    ushr-long v20, v14, v11

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v12, v0

    goto :goto_1

    .line 383
    :cond_4
    move/from16 v13, v16

    goto :goto_2

    .line 360
    .end local v11    # "n":I
    .end local v13    # "x":I
    .end local v16    # "y":I
    :cond_5
    add-int/lit8 v6, v6, 0x8

    goto :goto_0

    .line 395
    .end local v4    # "diff":J
    .end local v8    # "lw":J
    .end local v14    # "rw":J
    :cond_6
    mul-int/lit8 v6, v10, 0x8

    :goto_3
    if-ge v6, v7, :cond_7

    .line 396
    aget-byte v17, p1, v6

    aget-byte v18, p2, v6

    invoke-static/range {v17 .. v18}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v12

    .line 397
    .local v12, "result":I
    if-nez v12, :cond_0

    .line 395
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 401
    .end local v12    # "result":I
    :cond_7
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    sub-int v12, v17, v18

    goto :goto_1
.end method
