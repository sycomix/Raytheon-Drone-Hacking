.class public Lcom/google/gdata/data/IContent$Type;
.super Ljava/lang/Object;
.source "IContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/IContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final HTML:I = 0x2

.field public static final MEDIA:I = 0x7

.field public static final OTHER_BINARY:I = 0x6

.field public static final OTHER_TEXT:I = 0x4

.field public static final OTHER_XML:I = 0x5

.field public static final TEXT:I = 0x1

.field public static final XHTML:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
