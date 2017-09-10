.class public Lorg/apache/sanselan/formats/png/PngCrc;
.super Ljava/lang/Object;
.source "PngCrc.java"


# instance fields
.field private final crc_table:[J

.field private crc_table_computed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x100

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    return-void
.end method

.method private make_crc_table()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 34
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_2

    .line 36
    int-to-long v0, v3

    .line 37
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 39
    const-wide/16 v4, 0x1

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 41
    const-wide v4, 0xedb88320L

    shr-long v6, v0, v8

    xor-long v0, v4, v6

    .line 37
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    :cond_0
    shr-long/2addr v0, v8

    goto :goto_2

    .line 45
    :cond_1
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    aput-wide v0, v4, v3

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "c":J
    .end local v2    # "k":I
    :cond_2
    iput-boolean v8, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    .line 48
    return-void
.end method

.method private final update_crc(J[B)J
    .locals 9
    .param p1, "crc"    # J
    .param p3, "buf"    # [B

    .prologue
    .line 57
    move-wide v0, p1

    .line 60
    .local v0, "c":J
    iget-boolean v3, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    if-nez v3, :cond_0

    .line 61
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/PngCrc;->make_crc_table()V

    .line 62
    :cond_0
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 66
    iget-object v3, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    aget-byte v4, p3, v2

    int-to-long v4, v4

    xor-long/2addr v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    aget-wide v4, v3, v4

    const/16 v3, 0x8

    shr-long v6, v0, v3

    xor-long v0, v4, v6

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final continue_partial_crc(J[BI)J
    .locals 3
    .param p1, "old_crc"    # J
    .param p3, "buf"    # [B
    .param p4, "len"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final crc([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    const-wide v2, 0xffffffffL

    .line 74
    invoke-direct {p0, v2, v3, p1}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide v0

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final finish_partial_crc(J)J
    .locals 3
    .param p1, "old_crc"    # J

    .prologue
    .line 89
    const-wide v0, 0xffffffffL

    xor-long/2addr v0, p1

    return-wide v0
.end method

.method public final start_partial_crc([BI)J
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    .line 79
    const-wide v0, 0xffffffffL

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide v0

    return-wide v0
.end method
