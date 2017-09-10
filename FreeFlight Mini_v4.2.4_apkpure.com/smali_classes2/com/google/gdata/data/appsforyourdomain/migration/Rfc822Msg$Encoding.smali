.class public final enum Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;
.super Ljava/lang/Enum;
.source "Rfc822Msg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

.field public static final enum BASE64:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

.field public static final enum NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    .line 55
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    const-string v1, "BASE64"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->BASE64:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->BASE64:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->$VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->$VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-virtual {v0}, [Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    return-object v0
.end method
