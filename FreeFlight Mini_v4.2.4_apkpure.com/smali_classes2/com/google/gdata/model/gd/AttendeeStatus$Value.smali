.class public final Lcom/google/gdata/model/gd/AttendeeStatus$Value;
.super Ljava/lang/Object;
.source "AttendeeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/AttendeeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field public static final ACCEPTED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.accepted"

.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final DECLINED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.declined"

.field public static final INVITED:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.invited"

.field public static final TENTATIVE:Ljava/lang/String; = "http://schemas.google.com/g/2005#event.tentative"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/AttendeeStatus$Value;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/gdata/model/gd/AttendeeStatus$Value;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
