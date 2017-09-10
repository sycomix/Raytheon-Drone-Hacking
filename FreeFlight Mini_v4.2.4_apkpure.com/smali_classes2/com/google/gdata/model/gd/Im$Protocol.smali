.class public final Lcom/google/gdata/model/gd/Im$Protocol;
.super Ljava/lang/Object;
.source "Im.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Protocol"
.end annotation


# static fields
.field public static final AIM:Ljava/lang/String; = "http://schemas.google.com/g/2005#AIM"

.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final GOOGLE_TALK:Ljava/lang/String; = "http://schemas.google.com/g/2005#GOOGLE_TALK"

.field public static final ICQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#ICQ"

.field public static final JABBER:Ljava/lang/String; = "http://schemas.google.com/g/2005#JABBER"

.field public static final MSN:Ljava/lang/String; = "http://schemas.google.com/g/2005#MSN"

.field public static final NETMEETING:Ljava/lang/String; = "http://schemas.google.com/g/2005#NETMEETING"

.field public static final QQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#QQ"

.field public static final SKYPE:Ljava/lang/String; = "http://schemas.google.com/g/2005#SKYPE"

.field public static final YAHOO:Ljava/lang/String; = "http://schemas.google.com/g/2005#YAHOO"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#AIM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#ICQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#JABBER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://schemas.google.com/g/2005#MSN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://schemas.google.com/g/2005#NETMEETING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://schemas.google.com/g/2005#QQ"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://schemas.google.com/g/2005#SKYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://schemas.google.com/g/2005#YAHOO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/Im$Protocol;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/gdata/model/gd/Im$Protocol;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
