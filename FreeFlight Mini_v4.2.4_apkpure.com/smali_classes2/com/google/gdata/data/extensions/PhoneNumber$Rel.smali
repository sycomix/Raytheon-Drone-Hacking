.class public final Lcom/google/gdata/data/extensions/PhoneNumber$Rel;
.super Ljava/lang/Object;
.source "PhoneNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final ASSISTANT:Ljava/lang/String; = "http://schemas.google.com/g/2005#assistant"

.field public static final CALLBACK:Ljava/lang/String; = "http://schemas.google.com/g/2005#callback"

.field public static final CAR:Ljava/lang/String; = "http://schemas.google.com/g/2005#car"

.field public static final COMPANY_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#company_main"

.field public static final FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#fax"

.field public static final GENERAL:Ljava/lang/String;

.field public static final HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final INTERNAL_EXTENSION:Ljava/lang/String; = "http://schemas.google.com/g/2005#internal-extension"

.field public static final ISDN:Ljava/lang/String; = "http://schemas.google.com/g/2005#isdn"

.field public static final MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#main"

.field public static final MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final OTHER_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#other_fax"

.field public static final PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final RADIO:Ljava/lang/String; = "http://schemas.google.com/g/2005#radio"

.field public static final SATELLITE:Ljava/lang/String; = "http://schemas.google.com/g/2005#satellite"

.field public static final TELEX:Ljava/lang/String; = "http://schemas.google.com/g/2005#telex"

.field public static final TTY_TDD:Ljava/lang/String; = "http://schemas.google.com/g/2005#tty_tdd"

.field public static final WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final WORK_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_mobile"

.field public static final WORK_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_pager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/data/extensions/PhoneNumber$Rel;->GENERAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
