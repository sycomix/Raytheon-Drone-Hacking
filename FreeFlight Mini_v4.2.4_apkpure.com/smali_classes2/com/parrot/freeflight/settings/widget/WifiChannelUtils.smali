.class public Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;
.super Ljava/lang/Object;
.source "WifiChannelUtils.java"


# static fields
.field public static final CHANNELS_2_4_GHZ:[I

.field public static final CHANNELS_5_GHZ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_2_4_GHZ:[I

    .line 12
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_5_GHZ:[I

    return-void

    .line 10
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data

    .line 12
    :array_1
    .array-data 4
        0xb7
        0xb8
        0xb9
        0xbb
        0xbc
        0xbd
        0xc0
        0xc4
        0x7
        0x8
        0x9
        0xb
        0xc
        0x10
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x34
        0x38
        0x3c
        0x40
        0x64
        0x68
        0x6c
        0x70
        0x74
        0x78
        0x7c
        0x80
        0x84
        0x88
        0x8c
        0x95
        0x99
        0x9d
        0xa1
        0xa5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelTable()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_2_4_GHZ:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 22
    new-instance v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    const/4 v3, 0x0

    sget-object v4, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_2_4_GHZ:[I

    aget v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    .line 23
    .local v1, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_5_GHZ:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 26
    new-instance v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    const/4 v3, 0x1

    sget-object v4, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->CHANNELS_5_GHZ:[I

    aget v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;-><init>(II)V

    .line 27
    .restart local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_1
    return-object v2
.end method
