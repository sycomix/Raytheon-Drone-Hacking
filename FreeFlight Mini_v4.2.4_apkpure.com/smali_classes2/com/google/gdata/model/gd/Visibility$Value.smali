.class public final Lcom/google/gdata/model/gd/Visibility$Value;
.super Ljava/lang/Object;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final CONFIDENTIAL:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.confidential"

.field public static final DEFAULT:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.default"

.field public static final PRIVATE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.private"

.field public static final PUBLIC:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.public"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#event.confidential"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#event.default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#event.private"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#event.public"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Visibility$Value;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/model/gd/Visibility$Value;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
