.class public final Lcom/google/gdata/data/extensions/Image$Rel;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final FULL:Ljava/lang/String;

.field public static final RAW:Ljava/lang/String; = "http://schemas.google.com/g/2005#raw"

.field public static final RESIZED:Ljava/lang/String; = "http://schemas.google.com/g/2005#resized"

.field public static final SCALABLE:Ljava/lang/String; = "http://schemas.google.com/g/2005#scalable"

.field public static final THUMBNAIL:Ljava/lang/String; = "http://schemas.google.com/g/2005#thumbnail"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/data/extensions/Image$Rel;->FULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
