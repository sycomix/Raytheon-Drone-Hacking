.class public final Lcom/google/gdata/data/extensions/Email$Rel;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final GENERAL:Ljava/lang/String;

.field public static final HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/google/gdata/data/extensions/Email$Rel;->GENERAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
