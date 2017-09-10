.class public final Lcom/google/gdata/data/extensions/Rating$Rel;
.super Ljava/lang/Object;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final OVERALL:Ljava/lang/String;

.field public static final PRICE:Ljava/lang/String; = "http://schemas.google.com/g/2005#price"

.field public static final QUALITY:Ljava/lang/String; = "http://schemas.google.com/g/2005#quality"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/data/extensions/Rating$Rel;->OVERALL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
