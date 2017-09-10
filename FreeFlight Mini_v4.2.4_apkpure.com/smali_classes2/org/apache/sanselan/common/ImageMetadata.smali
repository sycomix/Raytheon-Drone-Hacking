.class public Lorg/apache/sanselan/common/ImageMetadata;
.super Ljava/lang/Object;
.source "ImageMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/common/IImageMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/ImageMetadata$Item;
    }
.end annotation


# static fields
.field protected static final newline:Ljava/lang/String;


# instance fields
.field private final items:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/common/ImageMetadata;->newline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/common/ImageMetadata;->items:Ljava/util/ArrayList;

    .line 73
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lorg/apache/sanselan/common/ImageMetadata$Item;

    invoke-direct {v0, p1, p2}, Lorg/apache/sanselan/common/ImageMetadata$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/ImageMetadata;->add(Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;)V

    .line 29
    return-void
.end method

.method public add(Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;)V
    .locals 1
    .param p1, "item"    # Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/sanselan/common/ImageMetadata;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/common/ImageMetadata;->items:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/ImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    const-string p1, ""

    .line 54
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/common/ImageMetadata;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 57
    if-lez v0, :cond_1

    .line 58
    sget-object v3, Lorg/apache/sanselan/common/ImageMetadata;->newline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/apache/sanselan/common/ImageMetadata;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;

    .line 64
    .local v1, "item":Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "item":Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
