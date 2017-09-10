.class public final Lcom/google/gdata/data/calendar/CalendarAclRole;
.super Ljava/lang/Object;
.source "CalendarAclRole.java"


# static fields
.field public static final EDITOR:Lcom/google/gdata/data/acl/AclRole;

.field public static final FREEBUSY:Lcom/google/gdata/data/acl/AclRole;

.field public static final NONE:Lcom/google/gdata/data/acl/AclRole;

.field public static final OVERRIDE:Lcom/google/gdata/data/acl/AclRole;

.field public static final OWNER:Lcom/google/gdata/data/acl/AclRole;

.field public static final READ:Lcom/google/gdata/data/acl/AclRole;

.field public static final RESPOND:Lcom/google/gdata/data/acl/AclRole;

.field public static final ROOT:Lcom/google/gdata/data/acl/AclRole;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->ROOT:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->ROOT:Lcom/google/gdata/data/acl/AclRole;

    .line 34
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->OWNER:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->OWNER:Lcom/google/gdata/data/acl/AclRole;

    .line 38
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->EDITOR:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->EDITOR:Lcom/google/gdata/data/acl/AclRole;

    .line 42
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->OVERRIDE:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->OVERRIDE:Lcom/google/gdata/data/acl/AclRole;

    .line 46
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->RESPOND:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->RESPOND:Lcom/google/gdata/data/acl/AclRole;

    .line 50
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->FREEBUSY:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->FREEBUSY:Lcom/google/gdata/data/acl/AclRole;

    .line 54
    new-instance v0, Lcom/google/gdata/data/acl/AclRole;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/gCal/2005#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/data/calendar/AccessLevelProperty;->READ:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    invoke-virtual {v2}, Lcom/google/gdata/data/calendar/AccessLevelProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/acl/AclRole;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->READ:Lcom/google/gdata/data/acl/AclRole;

    .line 58
    sget-object v0, Lcom/google/gdata/data/acl/AclRole;->NONE:Lcom/google/gdata/data/acl/AclRole;

    sput-object v0, Lcom/google/gdata/data/calendar/CalendarAclRole;->NONE:Lcom/google/gdata/data/acl/AclRole;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
