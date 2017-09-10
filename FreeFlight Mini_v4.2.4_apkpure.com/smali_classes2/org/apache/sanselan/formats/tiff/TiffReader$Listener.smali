.class public interface abstract Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;
.super Ljava/lang/Object;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z
.end method

.method public abstract addField(Lorg/apache/sanselan/formats/tiff/TiffField;)Z
.end method

.method public abstract readImageData()Z
.end method

.method public abstract readOffsetDirectories()Z
.end method

.method public abstract setTiffHeader(Lorg/apache/sanselan/formats/tiff/TiffHeader;)Z
.end method
