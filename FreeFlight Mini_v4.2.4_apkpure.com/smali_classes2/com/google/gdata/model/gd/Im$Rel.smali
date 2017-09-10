.class public final Lcom/google/gdata/model/gd/Im$Rel;
.super Ljava/lang/Object;
.source "Im.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#other"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#work"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Im$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/gdata/model/gd/Im$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
