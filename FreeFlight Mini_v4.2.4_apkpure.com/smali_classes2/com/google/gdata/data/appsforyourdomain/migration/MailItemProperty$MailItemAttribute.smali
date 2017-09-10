.class final enum Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;
.super Ljava/lang/Enum;
.source "MailItemProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MailItemAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

.field public static final enum IS_UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_DRAFT"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 36
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_INBOX"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 37
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_STARRED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 38
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_SENT"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 39
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_TRASH"

    invoke-direct {v0, v1, v7}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 40
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    const-string v1, "IS_UNREAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_DRAFT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_INBOX:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_STARRED:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_SENT:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_TRASH:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->IS_UNREAD:Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->$VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->$VALUES:[Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    invoke-virtual {v0}, [Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/appsforyourdomain/migration/MailItemProperty$MailItemAttribute;

    return-object v0
.end method
