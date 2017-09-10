.class public final Lcom/google/gdata/model/gd/PhoneNumber$Rel;
.super Ljava/lang/Object;
.source "PhoneNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/gd/PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field private static final ALL_VALUES:[Ljava/lang/String;

.field public static final ASSISTANT:Ljava/lang/String; = "http://schemas.google.com/g/2005#assistant"

.field public static final CALLBACK:Ljava/lang/String; = "http://schemas.google.com/g/2005#callback"

.field public static final CAR:Ljava/lang/String; = "http://schemas.google.com/g/2005#car"

.field public static final COMPANY_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#company_main"

.field public static final FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#fax"

.field public static final HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final ISDN:Ljava/lang/String; = "http://schemas.google.com/g/2005#isdn"

.field public static final MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#main"

.field public static final MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final OTHER_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#other_fax"

.field public static final PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final RADIO:Ljava/lang/String; = "http://schemas.google.com/g/2005#radio"

.field public static final TELEX:Ljava/lang/String; = "http://schemas.google.com/g/2005#telex"

.field public static final TTY_TDD:Ljava/lang/String; = "http://schemas.google.com/g/2005#tty_tdd"

.field public static final WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final WORK_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_mobile"

.field public static final WORK_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_pager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://schemas.google.com/g/2005#assistant"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://schemas.google.com/g/2005#callback"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://schemas.google.com/g/2005#car"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://schemas.google.com/g/2005#company_main"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://schemas.google.com/g/2005#fax"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://schemas.google.com/g/2005#home"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://schemas.google.com/g/2005#home_fax"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://schemas.google.com/g/2005#isdn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://schemas.google.com/g/2005#main"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://schemas.google.com/g/2005#mobile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http://schemas.google.com/g/2005#other"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "http://schemas.google.com/g/2005#other_fax"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "http://schemas.google.com/g/2005#pager"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "http://schemas.google.com/g/2005#radio"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "http://schemas.google.com/g/2005#telex"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "http://schemas.google.com/g/2005#tty_tdd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "http://schemas.google.com/g/2005#work"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "http://schemas.google.com/g/2005#work_fax"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "http://schemas.google.com/g/2005#work_mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "http://schemas.google.com/g/2005#work_pager"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/model/gd/PhoneNumber$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/gdata/model/gd/PhoneNumber$Rel;->ALL_VALUES:[Ljava/lang/String;

    return-object v0
.end method
