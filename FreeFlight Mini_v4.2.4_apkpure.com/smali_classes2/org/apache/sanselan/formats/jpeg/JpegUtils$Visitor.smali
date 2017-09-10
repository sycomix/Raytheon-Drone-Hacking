.class public interface abstract Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract beginSOS()Z
.end method

.method public abstract visitSOS(I[B[B)V
.end method

.method public abstract visitSegment(I[BI[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
